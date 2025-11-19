@interface THWGalleryInfo
- (CGPoint)captionPosition;
- (NSString)titleString;
- (THWGalleryInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6;
- (id)childEnumerator;
- (id)itemAtIndex:(unint64_t)a3;
- (void)addItem:(id)a3;
- (void)dealloc;
@end

@implementation THWGalleryInfo

- (THWGalleryInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 stageGeometry:(id)a6
{
  v10.receiver = self;
  v10.super_class = THWGalleryInfo;
  v8 = [(THWGalleryInfo *)&v10 initWithContext:a3 geometry:a4];
  if (v8)
  {
    v8->_style = a5;
    v8->_stageGeometry = a6;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryInfo;
  [(THWGalleryInfo *)&v3 dealloc];
}

- (void)addItem:(id)a3
{
  if (a3)
  {
    items = self->_items;
    if (!items)
    {
      items = objc_alloc_init(NSMutableArray);
      self->_items = items;
    }

    [(NSMutableArray *)items addObject:a3];
    [objc_msgSend(a3 "imageInfo")];
    v6 = [a3 captionStorage];

    [v6 setParentInfo:self];
  }
}

- (CGPoint)captionPosition
{
  v2 = [(TSWPShapeInfo *)[(THWWidgetAdornmentInfo *)[(THWGalleryInfo *)self adornmentInfo] caption] geometry];

  [v2 position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)titleString
{
  v2 = [(THWWidgetAdornmentInfo *)[(THWGalleryInfo *)self adornmentInfo] titleStorage];

  return [(TSWPStorage *)v2 string];
}

- (id)itemAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_items count]<= a3)
  {
    return 0;
  }

  items = self->_items;

  return [(NSMutableArray *)items objectAtIndex:a3];
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_items)
  {
    [v3 addObjectsFromArray:?];
  }

  if (self->_adornmentInfo)
  {
    [v4 addObject:?];
  }

  return [v4 objectEnumerator];
}

@end