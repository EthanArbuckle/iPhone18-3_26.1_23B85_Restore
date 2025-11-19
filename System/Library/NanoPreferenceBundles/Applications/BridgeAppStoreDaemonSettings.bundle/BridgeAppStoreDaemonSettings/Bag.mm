@interface Bag
- (AMSBagProtocol)amsBag;
- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (Bag)init;
- (RecentBag)asRecentBag;
- (UpToDateBag)asUpToDateBag;
- (double)doubleForKey:(id)a3 defaultValue:(double)a4;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayOfIntegersForKey:(id)a3;
- (id)arrayOfStringsForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4;
@end

@implementation Bag

- (id)BOOLForKey:(id)a3
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[4];
  sub_F19C(v5, v5[3]);
  v7 = a3;
  v8 = self;
  v9 = sub_9D18();
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(NSNumber) initWithBool:v9 & 1];
  }

  return v10;
}

- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[4];
  sub_F19C(v7, v7[3]);
  v9 = a3;
  v10 = self;
  v11 = sub_9D18();

  if (v11 == 2)
  {
    return a4;
  }

  else
  {
    return v11;
  }
}

- (id)doubleForKey:(id)a3
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_F19C(v5, v6);
  v8 = a3;
  v9 = self;
  v10 = sub_A058(v8, v6, v7, &dispatch thunk of Bag.subscript.getter);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:*&v10];
  }

  return v12;
}

- (double)doubleForKey:(id)a3 defaultValue:(double)a4
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[3];
  v9 = v7[4];
  sub_F19C(v7, v8);
  v10 = a3;
  v11 = self;
  v12 = COERCE_DOUBLE(sub_A058(v10, v8, v9, &dispatch thunk of Bag.subscript.getter));
  LOBYTE(v8) = v13;

  result = v12;
  if (v8)
  {
    return a4;
  }

  return result;
}

- (id)integerForKey:(id)a3
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_F19C(v5, v6);
  v8 = a3;
  v9 = self;
  v10 = sub_A058(v8, v6, v7, &dispatch thunk of Bag.subscript.getter);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:v10];
  }

  return v12;
}

- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[3];
  v9 = v7[4];
  sub_F19C(v7, v8);
  v10 = a3;
  v11 = self;
  v12 = sub_A058(v10, v8, v9, &dispatch thunk of Bag.subscript.getter);
  LOBYTE(v8) = v13;

  if (v8)
  {
    return a4;
  }

  else
  {
    return v12;
  }
}

- (id)stringForKey:(id)a3
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[4];
  sub_F19C(v5, v5[3]);
  v7 = a3;
  v8 = self;
  sub_A240();
  v10 = v9;

  if (v10)
  {
    v11 = sub_1881C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)URLForKey:(id)a3
{
  v5 = sub_9C94(&qword_25898, &qword_1AC30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = *&self->bag[OBJC_IVAR___Bag_bag + 24];
  sub_F19C((&self->super.isa + OBJC_IVAR___Bag_bag), *&self->bag[OBJC_IVAR___Bag_bag + 16]);
  v10 = a3;
  v11 = self;
  sub_A35C();

  v12 = sub_182CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    sub_182BC(v14);
    v17 = v16;
    (*(v13 + 8))(v8, v12);
    v15 = v17;
  }

  return v15;
}

- (id)arrayOfStringsForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_A534();

  if (v6)
  {
    v7.super.isa = sub_1887C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)arrayOfIntegersForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_A824();

  if (v6)
  {
    sub_12C2C(0, &qword_25980, NSNumber_ptr);
    v7.super.isa = sub_1887C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (AMSBagProtocol)amsBag
{
  v3 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v4 = v3[3];
  v5 = v3[4];
  sub_F19C(v3, v4);
  v6 = self;
  v7 = sub_7404(v4, v5);

  return v7;
}

- (RecentBag)asRecentBag
{
  v2 = self;
  v3 = sub_AB8C();

  return v3;
}

- (UpToDateBag)asUpToDateBag
{
  v2 = self;
  v3 = sub_AF88();

  return v3;
}

- (Bag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end