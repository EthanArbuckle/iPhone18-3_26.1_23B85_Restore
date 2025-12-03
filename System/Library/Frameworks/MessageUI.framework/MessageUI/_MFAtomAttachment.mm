@interface _MFAtomAttachment
+ (id)attachmentWithAtomLayoutView:(id)view representedObject:(id)object;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (_MFAtomAttachment)initWithAtomLayoutView:(id)view representedObject:(id)object;
@end

@implementation _MFAtomAttachment

+ (id)attachmentWithAtomLayoutView:(id)view representedObject:(id)object
{
  viewCopy = view;
  objectCopy = object;
  v8 = [[self alloc] initWithAtomLayoutView:viewCopy representedObject:objectCopy];

  return v8;
}

- (_MFAtomAttachment)initWithAtomLayoutView:(id)view representedObject:(id)object
{
  viewCopy = view;
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = _MFAtomAttachment;
  v9 = [(_MFAtomAttachment *)&v13 initWithData:0 ofType:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_atomView, view);
    objc_storeStrong(&v10->_representedObject, object);
    v11 = v10;
  }

  return v10;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  [(_MFAtomLayoutView *)self->_atomView boundsForTextContainer:container proposedLineFragment:index glyphPosition:fragment.origin.x characterIndex:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end