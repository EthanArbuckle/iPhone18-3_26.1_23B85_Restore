@interface PKIndexableContent
- (NSString)indexableTextRepresentation;
- (NSString)presentableTextRepresentation;
- (PKIndexableContent)initWithIndexableContent:(id)a3;
@end

@implementation PKIndexableContent

- (PKIndexableContent)initWithIndexableContent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKIndexableContent;
  v5 = [(PKIndexableContent *)&v8 init];
  chIndexableContent = v5->_chIndexableContent;
  v5->_chIndexableContent = v4;

  return v5;
}

- (NSString)indexableTextRepresentation
{
  v2 = [(PKIndexableContent *)self chIndexableContent];
  v3 = [v2 indexableTextRepresentation];

  return v3;
}

- (NSString)presentableTextRepresentation
{
  v2 = [(PKIndexableContent *)self chIndexableContent];
  v3 = [v2 presentableTextRepresentation];

  return v3;
}

@end