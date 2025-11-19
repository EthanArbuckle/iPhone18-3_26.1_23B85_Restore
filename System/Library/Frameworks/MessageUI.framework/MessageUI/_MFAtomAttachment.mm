@interface _MFAtomAttachment
+ (id)attachmentWithAtomLayoutView:(id)a3 representedObject:(id)a4;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (_MFAtomAttachment)initWithAtomLayoutView:(id)a3 representedObject:(id)a4;
@end

@implementation _MFAtomAttachment

+ (id)attachmentWithAtomLayoutView:(id)a3 representedObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithAtomLayoutView:v6 representedObject:v7];

  return v8;
}

- (_MFAtomAttachment)initWithAtomLayoutView:(id)a3 representedObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MFAtomAttachment;
  v9 = [(_MFAtomAttachment *)&v13 initWithData:0 ofType:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_atomView, a3);
    objc_storeStrong(&v10->_representedObject, a4);
    v11 = v10;
  }

  return v10;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  [(_MFAtomLayoutView *)self->_atomView boundsForTextContainer:a3 proposedLineFragment:a6 glyphPosition:a4.origin.x characterIndex:a4.origin.y, a4.size.width, a4.size.height, a5.x, a5.y];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end