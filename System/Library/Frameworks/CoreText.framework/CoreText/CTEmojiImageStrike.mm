@interface CTEmojiImageStrike
- (CGSize)alignmentInset;
- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 alignmentInset:(CGSize)a4;
- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 alignmentInset:(CGSize)a4 provenanceInfo:(id)a5;
- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 imageProperties:(id)a4;
- (void)dealloc;
@end

@implementation CTEmojiImageStrike

- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 alignmentInset:(CGSize)a4 provenanceInfo:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = CTEmojiImageStrike;
  v10 = [(CTEmojiImageStrike *)&v12 init];
  if (v10)
  {
    v10->_cgImage = CGImageRetain(a3);
    v10->_alignmentInset.width = width;
    v10->_alignmentInset.height = height;
    [(CTEmojiImageStrike *)v10 setProvenance:v9];
  }

  return v10;
}

- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 imageProperties:(id)a4
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = [a4 valueForKey:*MEMORY[0x1E696DD90]];
  v9 = [(CTEmojiImageStrike *)self initWithImage:a3 alignmentInset:v8 provenanceInfo:v6, v7];

  return v9;
}

- (CTEmojiImageStrike)initWithImage:(CGImage *)a3 alignmentInset:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [MEMORY[0x1E695DF20] dictionary];
  v9 = [(CTEmojiImageStrike *)self initWithImage:a3 alignmentInset:v8 provenanceInfo:width, height];

  return v9;
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