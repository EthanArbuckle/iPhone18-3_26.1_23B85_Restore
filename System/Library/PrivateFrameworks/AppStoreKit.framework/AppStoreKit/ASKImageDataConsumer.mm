@interface ASKImageDataConsumer
- (ASKImageDataConsumer)initWithSize:(CGSize)a3 scale:(double)a4 isLayeredImage:(BOOL)a5 renderIntent:(int64_t)a6;
- (CGSize)size;
- (id)objectForData:(id)a3 error:(id *)a4;
@end

@implementation ASKImageDataConsumer

- (ASKImageDataConsumer)initWithSize:(CGSize)a3 scale:(double)a4 isLayeredImage:(BOOL)a5 renderIntent:(int64_t)a6
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = ASKImageDataConsumer;
  result = [(ASKImageDataConsumer *)&v12 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_scale = a4;
    result->_isLayeredImage = a5;
    result->_renderIntent = a6;
  }

  return result;
}

- (id)objectForData:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = ![(ASKImageDataConsumer *)self isLayeredImage]&& [(ASKImageDataConsumer *)self renderIntent]!= 1;
  [(ASKImageDataConsumer *)self scale];
  v9 = *&v8;
  v10 = (v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v11 = ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v8 >= 0)
  {
    v11 = 0;
    v10 = 0;
  }

  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v12 = (v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v10;
  if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v12 = 1;
  }

  if ((v12 | v11) == 1)
  {
    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v9 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v6 scale:v9];

  if (!v15)
  {
    if (a4)
    {
      v22 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44[0] = @"Could not decode image";
      v23 = MEMORY[0x1E695DF20];
      v24 = v44;
      v25 = &v43;
      goto LABEL_28;
    }

LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

  [(ASKImageDataConsumer *)v15 size];
  if (v16 <= 0.0 || ([(ASKImageDataConsumer *)v15 size], v17 <= 0.0))
  {
    if (a4)
    {
      v22 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Invalid image dimensions";
      v23 = MEMORY[0x1E695DF20];
      v24 = &v42;
      v25 = &v41;
LABEL_28:
      v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      *a4 = [v22 errorWithDomain:@"ASKImageDataConsumerErrorDomain" code:-99 userInfo:v26];

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (!v7)
  {
    v27 = v15;
    goto LABEL_30;
  }

  [(ASKImageDataConsumer *)self size];
  if (v19 == *MEMORY[0x1E695F060] && v18 == *(MEMORY[0x1E695F060] + 8))
  {
    v21 = v15;
  }

  else
  {
    v21 = self;
  }

  [(ASKImageDataConsumer *)v21 size];
  v31 = v29;
  v32 = v30;
  if (v29 <= 0.0 || v30 <= 0.0 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    v22 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40 = @"Invalid target size";
    v23 = MEMORY[0x1E695DF20];
    v24 = &v40;
    v25 = &v39;
    goto LABEL_28;
  }

  v33 = [(ASKImageDataConsumer *)v15 imageRendererFormat];
  [v33 setScale:v9];
  v34 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v33 format:{v31, v32}];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __44__ASKImageDataConsumer_objectForData_error___block_invoke;
  v35[3] = &unk_1E870C450;
  v36 = v15;
  v37 = v31;
  v38 = v32;
  v27 = [v34 imageWithActions:v35];

LABEL_30:

  return v27;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end