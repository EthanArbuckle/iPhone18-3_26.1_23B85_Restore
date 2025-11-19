@interface _MKDataHeaderModel
- (UIView)ownerView;
- (_MKDataHeaderModel)init;
- (id)description;
- (void)setOwnerView:(id)a3;
@end

@implementation _MKDataHeaderModel

- (UIView)ownerView
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerView);

  return WeakRetained;
}

- (id)description
{
  v3 = [&stru_1F15B23C0 mutableCopy];
  v4 = [(_MKLineHeaderModel *)self->_firstLine description];
  [v3 appendFormat:@"1: %@\n", v4];

  v5 = [(_MKLineHeaderModel *)self->_secondLine description];
  [v3 appendFormat:@"2: %@\n", v5];

  v6 = [(_MKLineHeaderModel *)self->_firstLine description];
  [v3 appendFormat:@"3: %@\n", v6];

  v7 = [(_MKLineHeaderModel *)self->_thirdLine description];
  [v3 appendFormat:@"4: %@\n", v7];

  v8 = [(_MKLineHeaderModel *)self->_forthLine description];
  [v3 appendFormat:@"5: %@\n", v8];

  v9 = [(_MKLineHeaderModel *)self->_secondaryNameLine description];
  [v3 appendFormat:@"6: %@\n", v9];

  return v3;
}

- (void)setOwnerView:(id)a3
{
  firstLine = self->_firstLine;
  v5 = a3;
  [(_MKLineHeaderModel *)firstLine setOwnerView:v5];
  [(_MKLineHeaderModel *)self->_secondLine setOwnerView:v5];
  [(_MKLineHeaderModel *)self->_thirdLine setOwnerView:v5];
  [(_MKLineHeaderModel *)self->_forthLine setOwnerView:v5];
  [(_MKLineHeaderModel *)self->_secondaryNameLine setOwnerView:v5];
}

- (_MKDataHeaderModel)init
{
  v14.receiver = self;
  v14.super_class = _MKDataHeaderModel;
  v2 = [(_MKDataHeaderModel *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(_MKLineHeaderModel);
    firstLine = v2->_firstLine;
    v2->_firstLine = v3;

    v5 = objc_alloc_init(_MKLineHeaderModel);
    secondLine = v2->_secondLine;
    v2->_secondLine = v5;

    v7 = objc_alloc_init(_MKLineHeaderModel);
    thirdLine = v2->_thirdLine;
    v2->_thirdLine = v7;

    v9 = objc_alloc_init(_MKLineHeaderModel);
    forthLine = v2->_forthLine;
    v2->_forthLine = v9;

    v11 = objc_alloc_init(_MKLineHeaderModel);
    secondaryNameLine = v2->_secondaryNameLine;
    v2->_secondaryNameLine = v11;
  }

  return v2;
}

@end