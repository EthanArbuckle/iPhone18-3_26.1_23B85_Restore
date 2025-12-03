@interface AVChapter
+ (id)chapterAtTime:(double)time inChapters:(id)chapters;
+ (id)playbackChapterWithStartTime:(double)time duration:(double)duration number:(unint64_t)number title:(id)title imageFaultBlock:(id)block;
+ (void)initialize;
- (AVChapter)initWithStartTime:(double)time duration:(double)duration number:(unint64_t)number title:(id)title imageFaultBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (UIImage)image;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCGImage:(CGImage *)image;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation AVChapter

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cgImage"])
  {
    cgImage = [(AVChapter *)self cgImage];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVChapter;
    cgImage = [(AVChapter *)&v8 valueForUndefinedKey:keyCopy];
  }

  v6 = cgImage;

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"cgImage"])
  {
    [(AVChapter *)self setCGImage:valueCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVChapter;
    [(AVChapter *)&v8 setValue:valueCopy forUndefinedKey:keyCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(AVChapter *)self startTime], v6 = v5, [(AVChapter *)equalCopy startTime], v6 == v7) && ([(AVChapter *)self duration], v9 = v8, [(AVChapter *)equalCopy duration], v9 == v10) && (v11 = [(AVChapter *)self number], v11 == [(AVChapter *)equalCopy number]))
    {
      title = [(AVChapter *)self title];
      title2 = [(AVChapter *)equalCopy title];
      if ([title isEqualToString:title2])
      {
        cgImage = [(AVChapter *)self cgImage];
        v15 = cgImage == [(AVChapter *)equalCopy cgImage];
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
  title = [(AVChapter *)self title];
  v3 = [title hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(AVChapter *)self startTime];
  v6 = v5;
  [(AVChapter *)self duration];
  v8 = v7;
  number = [(AVChapter *)self number];
  title = [(AVChapter *)self title];
  v11 = [self->_imageBlock copy];
  v12 = [v4 initWithStartTime:number duration:title number:v11 title:v6 imageFaultBlock:v8];

  return v12;
}

- (void)setCGImage:(CGImage *)image
{
  cgImage = self->_cgImage;
  if (cgImage != image)
  {
    if (cgImage)
    {
      CGImageRelease(cgImage);
    }

    self->_cgImage = image;
    if (image)
    {

      CGImageRetain(image);
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

- (AVChapter)initWithStartTime:(double)time duration:(double)duration number:(unint64_t)number title:(id)title imageFaultBlock:(id)block
{
  titleCopy = title;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = AVChapter;
  v15 = [(AVChapter *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_startTime = time;
    v15->_duration = duration;
    v15->_number = number;
    objc_storeStrong(&v15->_title, title);
    v17 = _Block_copy(blockCopy);
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

+ (id)chapterAtTime:(double)time inChapters:(id)chapters
{
  v22 = *MEMORY[0x1E69E9840];
  chaptersCopy = chapters;
  if (![chaptersCopy count])
  {
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = chaptersCopy;
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
        if (v13 > time)
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

+ (id)playbackChapterWithStartTime:(double)time duration:(double)duration number:(unint64_t)number title:(id)title imageFaultBlock:(id)block
{
  blockCopy = block;
  titleCopy = title;
  v14 = [[self alloc] initWithStartTime:number duration:titleCopy number:blockCopy title:time imageFaultBlock:duration];

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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