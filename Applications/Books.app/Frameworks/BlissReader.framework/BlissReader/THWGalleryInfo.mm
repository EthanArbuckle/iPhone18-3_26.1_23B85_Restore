@interface THWGalleryInfo
- (CGPoint)captionPosition;
- (NSString)titleString;
- (THWGalleryInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry;
- (id)childEnumerator;
- (id)itemAtIndex:(unint64_t)index;
- (void)addItem:(id)item;
- (void)dealloc;
@end

@implementation THWGalleryInfo

- (THWGalleryInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style stageGeometry:(id)stageGeometry
{
  v10.receiver = self;
  v10.super_class = THWGalleryInfo;
  v8 = [(THWGalleryInfo *)&v10 initWithContext:context geometry:geometry];
  if (v8)
  {
    v8->_style = style;
    v8->_stageGeometry = stageGeometry;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGalleryInfo;
  [(THWGalleryInfo *)&v3 dealloc];
}

- (void)addItem:(id)item
{
  if (item)
  {
    items = self->_items;
    if (!items)
    {
      items = objc_alloc_init(NSMutableArray);
      self->_items = items;
    }

    [(NSMutableArray *)items addObject:item];
    [objc_msgSend(item "imageInfo")];
    captionStorage = [item captionStorage];

    [captionStorage setParentInfo:self];
  }
}

- (CGPoint)captionPosition
{
  geometry = [(TSWPShapeInfo *)[(THWWidgetAdornmentInfo *)[(THWGalleryInfo *)self adornmentInfo] caption] geometry];

  [geometry position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)titleString
{
  titleStorage = [(THWWidgetAdornmentInfo *)[(THWGalleryInfo *)self adornmentInfo] titleStorage];

  return [(TSWPStorage *)titleStorage string];
}

- (id)itemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_items count]<= index)
  {
    return 0;
  }

  items = self->_items;

  return [(NSMutableArray *)items objectAtIndex:index];
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