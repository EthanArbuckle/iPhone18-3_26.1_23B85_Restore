@interface PPKPDFIconCollectionViewCell_iOS_Swift
- (PPKPDFIconCollectionViewCell_iOS_Swift)initWithCoder:(id)a3;
- (PPKPDFIconCollectionViewCell_iOS_Swift)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation PPKPDFIconCollectionViewCell_iOS_Swift

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PPKPDFIconCollectionViewCell_iOS_Swift();
  v2 = v4.receiver;
  [(PPKPDFIconCollectionViewCell_iOS *)&v4 prepareForReuse];
  v3 = OBJC_IVAR___PPKPDFIconCollectionViewCell_iOS_Swift_imageFetch;
  if (*&v2[OBJC_IVAR___PPKPDFIconCollectionViewCell_iOS_Swift_imageFetch])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v2[v3] = 0;
}

- (PPKPDFIconCollectionViewCell_iOS_Swift)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___PPKPDFIconCollectionViewCell_iOS_Swift_imageFetch) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PPKPDFIconCollectionViewCell_iOS_Swift();
  return [(PPKPDFIconCollectionViewCell_iOS *)&v8 initWithFrame:x, y, width, height];
}

- (PPKPDFIconCollectionViewCell_iOS_Swift)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___PPKPDFIconCollectionViewCell_iOS_Swift_imageFetch) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PPKPDFIconCollectionViewCell_iOS_Swift();
  v4 = a3;
  v5 = [(PPKPDFIconCollectionViewCell_iOS *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end