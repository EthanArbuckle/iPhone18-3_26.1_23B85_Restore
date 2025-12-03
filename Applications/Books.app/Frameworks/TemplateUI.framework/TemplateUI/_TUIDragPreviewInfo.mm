@interface _TUIDragPreviewInfo
- (_TUIDragPreviewInfo)initWithDragInfo:(id)info view:(id)view;
@end

@implementation _TUIDragPreviewInfo

- (_TUIDragPreviewInfo)initWithDragInfo:(id)info view:(id)view
{
  infoCopy = info;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _TUIDragPreviewInfo;
  v9 = [(_TUIDragPreviewInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragInfo, info);
    objc_storeStrong(&v10->_view, view);
  }

  return v10;
}

@end