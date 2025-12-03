@interface PKIndexableContent
- (NSString)indexableTextRepresentation;
- (NSString)presentableTextRepresentation;
- (PKIndexableContent)initWithIndexableContent:(id)content;
@end

@implementation PKIndexableContent

- (PKIndexableContent)initWithIndexableContent:(id)content
{
  contentCopy = content;
  v8.receiver = self;
  v8.super_class = PKIndexableContent;
  v5 = [(PKIndexableContent *)&v8 init];
  chIndexableContent = v5->_chIndexableContent;
  v5->_chIndexableContent = contentCopy;

  return v5;
}

- (NSString)indexableTextRepresentation
{
  chIndexableContent = [(PKIndexableContent *)self chIndexableContent];
  indexableTextRepresentation = [chIndexableContent indexableTextRepresentation];

  return indexableTextRepresentation;
}

- (NSString)presentableTextRepresentation
{
  chIndexableContent = [(PKIndexableContent *)self chIndexableContent];
  presentableTextRepresentation = [chIndexableContent presentableTextRepresentation];

  return presentableTextRepresentation;
}

@end