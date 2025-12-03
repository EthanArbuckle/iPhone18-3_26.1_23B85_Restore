@interface AVTStickerRecentsLayout
+ (CGSize)buttonSizeForContainerSize:(CGSize)size imageSize:(CGSize)imageSize;
- (AVTStickerRecentsLayout)initWithNumberOfItemsPerRow:(int64_t)row numberOfItemsPerColumn:(int64_t)column interitemPadding:(double)padding appButtonIndex:(int64_t)index laysOutVertically:(BOOL)vertically;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AVTStickerRecentsLayout

+ (CGSize)buttonSizeForContainerSize:(CGSize)size imageSize:(CGSize)imageSize
{
  v4 = size.height * 0.3;
  v5 = v4 * imageSize.width / imageSize.height;
  result.height = v4;
  result.width = v5;
  return result;
}

- (AVTStickerRecentsLayout)initWithNumberOfItemsPerRow:(int64_t)row numberOfItemsPerColumn:(int64_t)column interitemPadding:(double)padding appButtonIndex:(int64_t)index laysOutVertically:(BOOL)vertically
{
  v13.receiver = self;
  v13.super_class = AVTStickerRecentsLayout;
  result = [(AVTStickerRecentsLayout *)&v13 init];
  if (result)
  {
    result->_numberOfItems = column * row;
    result->_numberOfItemsPerRow = row;
    result->_numberOfItemsPerColumn = column;
    result->_interitemPadding = padding;
    result->_appButtonIndex = index;
    result->_laysOutVertically = vertically;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    numberOfItemsPerRow = [(AVTStickerRecentsLayout *)self numberOfItemsPerRow];
    if (numberOfItemsPerRow == [v5 numberOfItemsPerRow] && (v7 = -[AVTStickerRecentsLayout numberOfItemsPerColumn](self, "numberOfItemsPerColumn"), v7 == objc_msgSend(v5, "numberOfItemsPerColumn")) && (v8 = -[AVTStickerRecentsLayout interitemPadding](self, "interitemPadding"), v8 == objc_msgSend(v5, "interitemPadding")) && (v9 = -[AVTStickerRecentsLayout appButtonIndex](self, "appButtonIndex"), v9 == objc_msgSend(v5, "appButtonIndex")))
    {
      laysOutVertically = [(AVTStickerRecentsLayout *)self laysOutVertically];
      v11 = laysOutVertically ^ [v5 laysOutVertically] ^ 1;
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