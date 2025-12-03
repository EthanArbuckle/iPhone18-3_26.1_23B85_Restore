@interface CTEmojiImageStrike
- (CGSize)alignmentInset;
- (CTEmojiImageStrike)initWithImage:(CGImage *)image alignmentInset:(CGSize)inset;
- (CTEmojiImageStrike)initWithImage:(CGImage *)image alignmentInset:(CGSize)inset provenanceInfo:(id)info;
- (CTEmojiImageStrike)initWithImage:(CGImage *)image imageProperties:(id)properties;
- (void)dealloc;
@end

@implementation CTEmojiImageStrike

- (CTEmojiImageStrike)initWithImage:(CGImage *)image alignmentInset:(CGSize)inset provenanceInfo:(id)info
{
  height = inset.height;
  width = inset.width;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = CTEmojiImageStrike;
  v10 = [(CTEmojiImageStrike *)&v12 init];
  if (v10)
  {
    v10->_cgImage = CGImageRetain(image);
    v10->_alignmentInset.width = width;
    v10->_alignmentInset.height = height;
    [(CTEmojiImageStrike *)v10 setProvenance:infoCopy];
  }

  return v10;
}

- (CTEmojiImageStrike)initWithImage:(CGImage *)image imageProperties:(id)properties
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = [properties valueForKey:*MEMORY[0x1E696DD90]];
  v9 = [(CTEmojiImageStrike *)self initWithImage:image alignmentInset:v8 provenanceInfo:v6, v7];

  return v9;
}

- (CTEmojiImageStrike)initWithImage:(CGImage *)image alignmentInset:(CGSize)inset
{
  height = inset.height;
  width = inset.width;
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  height = [(CTEmojiImageStrike *)self initWithImage:image alignmentInset:dictionary provenanceInfo:width, height];

  return height;
}

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  v3.receiver = self;
  v3.super_class = CTEmojiImageStrike;
  [(CTEmojiImageStrike *)&v3 dealloc];
}

- (CGSize)alignmentInset
{
  objc_copyStruct(v4, &self->_alignmentInset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end