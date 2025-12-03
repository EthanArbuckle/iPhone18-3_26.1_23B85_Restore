@interface CuratedCollectionFooterActionItem
- (CuratedCollectionFooterActionItem)initWithType:(unint64_t)type title:(id)title glyph:(id)glyph;
@end

@implementation CuratedCollectionFooterActionItem

- (CuratedCollectionFooterActionItem)initWithType:(unint64_t)type title:(id)title glyph:(id)glyph
{
  titleCopy = title;
  glyphCopy = glyph;
  v17.receiver = self;
  v17.super_class = CuratedCollectionFooterActionItem;
  v10 = [(CuratedCollectionFooterActionItem *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [glyphCopy copy];
    glyph = v11->_glyph;
    v11->_glyph = v14;
  }

  return v11;
}

@end