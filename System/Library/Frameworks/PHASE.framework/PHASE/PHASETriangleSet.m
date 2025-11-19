@interface PHASETriangleSet
- (PHASETriangleSet)init;
- (PHASETriangleSet)initWithTriangleData:(id)a3 color:;
- (id).cxx_construct;
@end

@implementation PHASETriangleSet

- (PHASETriangleSet)init
{
  v3.receiver = self;
  v3.super_class = PHASETriangleSet;
  return [(PHASETriangleSet *)&v3 init];
}

- (PHASETriangleSet)initWithTriangleData:(id)a3 color:
{
  v13 = v3;
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PHASETriangleSet;
  v6 = [(PHASETriangleSet *)&v14 init];
  v7 = [v5 length];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v6->_anon_8, 3 * (v7 / 0x24));
  v8 = [v5 bytes];
  if (v7 >= 0x24)
  {
    v10 = 0;
    v11 = v7 / 0x24;
    do
    {
      *&v9 = *v8;
      DWORD2(v9) = *(v8 + 8);
      *(*v6->_anon_8 + v10) = v9;
      *&v9 = *(v8 + 12);
      DWORD2(v9) = *(v8 + 20);
      *(*v6->_anon_8 + v10 + 16) = v9;
      *&v9 = *(v8 + 24);
      DWORD2(v9) = *(v8 + 32);
      *(*v6->_anon_8 + v10 + 32) = v9;
      v8 += 36;
      v10 += 48;
      --v11;
    }

    while (v11);
  }

  v6->_size = v7 / 0x24;
  *v6->_color = v13;

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end