@interface AVChapter
+ (id)chapterAtTime:(double)a3 inChapters:(id)a4;
+ (id)playbackChapterWithStartTime:(double)a3 duration:(double)a4 number:(unint64_t)a5 title:(id)a6 imageFaultBlock:(id)a7;
+ (void)initialize;
- (AVChapter)initWithStartTime:(double)a3 duration:(double)a4 number:(unint64_t)a5 title:(id)a6 imageFaultBlock:(id)a7;
- (BOOL)isEqual:(id)a3;
- (UIImage)image;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCGImage:(CGImage *)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation AVChapter

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"cgImage"])
  {
    v5 = [(AVChapter *)self cgImage];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVChapter;
    v5 = [(AVChapter *)&v8 valueForUndefinedKey:v4];
  }

  v6 = v5;

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isEqualToString:@"cgImage"])
  {
    [(AVChapter *)self setCGImage:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVChapter;
    [(AVChapter *)&v8 setValue:v7 forUndefinedKey:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(AVChapter *)self startTime], v6 = v5, [(AVChapter *)v4 startTime], v6 == v7) && ([(AVChapter *)self duration], v9 = v8, [(AVChapter *)v4 duration], v9 == v10) && (v11 = [(AVChapter *)self number], v11 == [(AVChapter *)v4 number]))
    {
      v12 = [(AVChapter *)self title];
      v13 = [(AVChapter *)v4 title];
      if ([v12 isEqualToString:v13])
      {
        v14 = [(AVChapter *)self cgImage];
        v15 = v14 == [(AVChapter *)v4 cgImage];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = [(AVChapter *)self title];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(AVChapter *)self startTime];
  v6 = v5;
  [(AVChapter *)self duration];
  v8 = v7;
  v9 = [(AVChapter *)self number];
  v10 = [(AVChapter *)self title];
  v11 = [self->_imageBlock copy];
  v12 = [v4 initWithStartTime:v9 duration:v10 number:v11 title:v6 imageFaultBlock:v8];

  return v12;
}

- (void)setCGImage:(CGImage *)a3
{
  cgImage = self->_cgImage;
  if (cgImage != a3)
  {
    if (cgImage)
    {
      CGImageRelease(cgImage);
    }

    self->_cgImage = a3;
    if (a3)
    {

      CGImageRetain(a3);
    }
  }
}

- (void)dealloc
{
  [(AVChapter *)self setCGImage:0];
  v3.receiver = self;
  v3.super_class = AVChapter;
  [(AVChapter *)&v3 dealloc];
}

- (AVChapter)initWithStartTime:(double)a3 duration:(double)a4 number:(unint64_t)a5 title:(id)a6 imageFaultBlock:(id)a7
{
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = AVChapter;
  v15 = [(AVChapter *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_startTime = a3;
    v15->_duration = a4;
    v15->_number = a5;
    objc_storeStrong(&v15->_title, a6);
    v17 = _Block_copy(v14);
    imageBlock = v16->_imageBlock;
    v16->_imageBlock = v17;

    if (v16->_imageBlock)
    {
      objc_initWeak(&location, v16);
      v19 = _imageQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__AVChapter_initWithStartTime_duration_number_title_imageFaultBlock___block_invoke;
      v21[3] = &unk_1E7209EA8;
      objc_copyWeak(&v22, &location);
      dispatch_async(v19, v21);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  return v16;
}

void __69__AVChapter_initWithStartTime_duration_number_title_imageFaultBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = (*(WeakRetained[1] + 16))();
    if (v3)
    {
      v4 = v3;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __69__AVChapter_initWithStartTime_duration_number_title_imageFaultBlock___block_invoke_2;
      v5[3] = &unk_1E7209A38;
      objc_copyWeak(v6, (a1 + 32));
      v6[1] = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v5);
      objc_destroyWeak(v6);
    }
  }
}

void __69__AVChapter_initWithStartTime_duration_number_title_imageFaultBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCGImage:*(a1 + 40)];

  v3 = *(a1 + 40);

  CGImageRelease(v3);
}

+ (id)chapterAtTime:(double)a3 inChapters:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (![v5 count])
  {
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * v11) startTime];
        if (v13 > a3)
        {
          v9 = v12;
          goto LABEL_13;
        }

        ++v12;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  v14 = v9 ? v9 - 1 : 0;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v6 objectAtIndexedSubscript:?];
  }

  else
  {
LABEL_17:
    v15 = 0;
  }

  return v15;
}

+ (id)playbackChapterWithStartTime:(double)a3 duration:(double)a4 number:(unint64_t)a5 title:(id)a6 imageFaultBlock:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [[a1 alloc] initWithStartTime:a5 duration:v13 number:v12 title:a3 imageFaultBlock:a4];

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("com.apple.AVKit.ChapterImageQueue", 0);
    v3 = _imageQueue;
    _imageQueue = v2;

    MEMORY[0x1EEE66BB8](v2, v3);
  }
}

- (UIImage)image
{
  v2 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{-[AVChapter cgImage](self, "cgImage")}];

  return v2;
}

@end