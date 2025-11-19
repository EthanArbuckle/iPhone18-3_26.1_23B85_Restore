@interface CuratedCollectionFooterActionItem
- (CuratedCollectionFooterActionItem)initWithType:(unint64_t)a3 title:(id)a4 glyph:(id)a5;
@end

@implementation CuratedCollectionFooterActionItem

- (CuratedCollectionFooterActionItem)initWithType:(unint64_t)a3 title:(id)a4 glyph:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = CuratedCollectionFooterActionItem;
  v10 = [(CuratedCollectionFooterActionItem *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    glyph = v11->_glyph;
    v11->_glyph = v14;
  }

  return v11;
}

@end