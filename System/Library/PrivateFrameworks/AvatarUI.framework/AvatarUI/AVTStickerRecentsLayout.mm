@interface AVTStickerRecentsLayout
+ (CGSize)buttonSizeForContainerSize:(CGSize)a3 imageSize:(CGSize)a4;
- (AVTStickerRecentsLayout)initWithNumberOfItemsPerRow:(int64_t)a3 numberOfItemsPerColumn:(int64_t)a4 interitemPadding:(double)a5 appButtonIndex:(int64_t)a6 laysOutVertically:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation AVTStickerRecentsLayout

+ (CGSize)buttonSizeForContainerSize:(CGSize)a3 imageSize:(CGSize)a4
{
  v4 = a3.height * 0.3;
  v5 = v4 * a4.width / a4.height;
  result.height = v4;
  result.width = v5;
  return result;
}

- (AVTStickerRecentsLayout)initWithNumberOfItemsPerRow:(int64_t)a3 numberOfItemsPerColumn:(int64_t)a4 interitemPadding:(double)a5 appButtonIndex:(int64_t)a6 laysOutVertically:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = AVTStickerRecentsLayout;
  result = [(AVTStickerRecentsLayout *)&v13 init];
  if (result)
  {
    result->_numberOfItems = a4 * a3;
    result->_numberOfItemsPerRow = a3;
    result->_numberOfItemsPerColumn = a4;
    result->_interitemPadding = a5;
    result->_appButtonIndex = a6;
    result->_laysOutVertically = a7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AVTStickerRecentsLayout *)self numberOfItemsPerRow];
    if (v6 == [v5 numberOfItemsPerRow] && (v7 = -[AVTStickerRecentsLayout numberOfItemsPerColumn](self, "numberOfItemsPerColumn"), v7 == objc_msgSend(v5, "numberOfItemsPerColumn")) && (v8 = -[AVTStickerRecentsLayout interitemPadding](self, "interitemPadding"), v8 == objc_msgSend(v5, "interitemPadding")) && (v9 = -[AVTStickerRecentsLayout appButtonIndex](self, "appButtonIndex"), v9 == objc_msgSend(v5, "appButtonIndex")))
    {
      v10 = [(AVTStickerRecentsLayout *)self laysOutVertically];
      v11 = v10 ^ [v5 laysOutVertically] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  *(&v4 + 1) = [(AVTStickerRecentsLayout *)self numberOfItemsPerRow];
  *&v4 = [(AVTStickerRecentsLayout *)self numberOfItemsPerRow];
  v3 = v4 >> 52;
  *(&v4 + 1) = [(AVTStickerRecentsLayout *)self numberOfItemsPerColumn];
  *&v4 = [(AVTStickerRecentsLayout *)self numberOfItemsPerColumn];
  v5 = (v4 >> 48) ^ v3;
  *(&v4 + 1) = [(AVTStickerRecentsLayout *)self interitemPadding];
  *&v4 = [(AVTStickerRecentsLayout *)self interitemPadding];
  v6 = v4 >> 43;
  *(&v4 + 1) = [(AVTStickerRecentsLayout *)self appButtonIndex];
  *&v4 = [(AVTStickerRecentsLayout *)self appButtonIndex];
  return v5 ^ v6 ^ (v4 >> 32) ^ [(AVTStickerRecentsLayout *)self laysOutVertically];
}

@end