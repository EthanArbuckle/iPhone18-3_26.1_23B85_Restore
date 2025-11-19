@interface DelaunayTriangle
- (id)initFirst:(DelaunayTriangle *)self second:(SEL)a2 third:;
@end

@implementation DelaunayTriangle

- (id)initFirst:(DelaunayTriangle *)self second:(SEL)a2 third:
{
  v9 = v3;
  v10 = v2;
  v11 = v4;
  v12.receiver = self;
  v12.super_class = DelaunayTriangle;
  v5 = [(DelaunayTriangle *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_first[4] = v10;
    *&v5->_second[4] = v9;
    *&v5->_third[4] = v11;
    v5->_area = fabsf((((*(&v11 + 1) - *(&v10 + 1)) * *&v9) + (*&v10 * (*(&v9 + 1) - *(&v11 + 1)))) + (*&v11 * (*(&v10 + 1) - *(&v9 + 1)))) * 0.5;
    v7 = v5;
  }

  return v6;
}

@end