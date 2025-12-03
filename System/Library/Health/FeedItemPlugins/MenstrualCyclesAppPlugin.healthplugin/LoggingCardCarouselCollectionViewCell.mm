@interface LoggingCardCarouselCollectionViewCell
- (NSString)description;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation LoggingCardCarouselCollectionViewCell

- (NSString)description
{
  sub_29E2C3714();
  v6[2] = self;
  selfCopy = self;
  sub_29E0D88FC(sub_29DF9B0E8, v6);

  v4 = sub_29E2C33A4();

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_29DF9A3E4(attributesCopy);
}

@end