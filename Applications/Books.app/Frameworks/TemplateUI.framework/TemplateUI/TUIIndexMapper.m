@interface TUIIndexMapper
- (TUIIndexMapper)initWithCount:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)oldCount;
- (void)dealloc;
- (void)deleteAtIndex:(unint64_t)a3;
- (void)insertAtIndex:(unint64_t)a3;
- (void)trimWithStart:(int64_t)a3 end:(int64_t)a4;
@end

@implementation TUIIndexMapper

- (TUIIndexMapper)initWithCount:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = TUIIndexMapper;
  if ([(TUIIndexMapper *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mapper = self->_mapper;
  if (mapper)
  {
    sub_9EF94(mapper);
    operator delete();
  }

  v4.receiver = self;
  v4.super_class = TUIIndexMapper;
  [(TUIIndexMapper *)&v4 dealloc];
}

- (unint64_t)count
{
  mapper = self->_mapper;
  v3 = mapper[6];
  v4 = (v3 & (mapper[9] >> 63)) + mapper[9];
  v5 = mapper[10] + (v3 & (mapper[10] >> 63));
  if (v4 >= v3)
  {
    v4 = v3;
  }

  if (v5 + 1 < v3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6 <= v4;
  v8 = v6 - v4;
  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (unint64_t)oldCount
{
  mapper = self->_mapper;
  v3 = mapper[7];
  v4 = (v3 & (mapper[9] >> 63)) + mapper[9];
  v5 = mapper[10] + (v3 & (mapper[10] >> 63));
  if (v4 >= v3)
  {
    v4 = v3;
  }

  if (v5 + 1 < v3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6 <= v4;
  v8 = v6 - v4;
  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (void)deleteAtIndex:(unint64_t)a3
{
  mapper = self->_mapper;
  sub_9F040(mapper, a3, 1, 0);
  --mapper[6];
}

- (void)insertAtIndex:(unint64_t)a3
{
  mapper = self->_mapper;
  sub_9FDD0(mapper, a3, 1);
  ++mapper[6];
}

- (void)trimWithStart:(int64_t)a3 end:(int64_t)a4
{
  mapper = self->_mapper;
  mapper[9] = a3;
  mapper[10] = a4;
  sub_A0240(mapper, a3, a4);

  sub_A03DC(mapper, a3, a4);
}

@end