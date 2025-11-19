@interface ASUSQLiteQueryResults
- (BOOL)hasRows;
- (NSNumber)firstNumberValue;
- (int64_t)firstInt64Value;
- (void)enumerateRowsUsingBlock:(id)a3;
@end

@implementation ASUSQLiteQueryResults

- (void)enumerateRowsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100670AC0([ASUSQLiteCursor alloc], self->_statement);
  v6 = sub_100670E48(self->_statement);
  v7 = sub_100670E3C(self->_statement);
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E9854;
  v13[3] = &unk_100756C08;
  v16 = v6;
  v8 = v4;
  v15 = v8;
  v9 = v5;
  v14 = v9;
  v10 = sub_1006717E8(v7, &v17, v13);
  v11 = v17;

  if (v10)
  {
    [(ASUSQLiteStatement *)self->_statement reset];
  }

  else
  {
    v12 = 0;
    (*(v8 + 2))(v8, 0, v11, &v12);
  }
}

- (int64_t)firstInt64Value
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9970;
  v4[3] = &unk_100756B40;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSNumber)firstNumberValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1001E9AB8;
  v9 = sub_1001E9AC8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9AD0;
  v4[3] = &unk_100756B40;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)hasRows
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9BE0;
  v4[3] = &unk_100756B40;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end