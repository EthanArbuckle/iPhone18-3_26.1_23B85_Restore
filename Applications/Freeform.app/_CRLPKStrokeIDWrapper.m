@interface _CRLPKStrokeIDWrapper
- (BOOL)isEqual:(id)a3;
- (_CRLPKStrokeIDWrapper)initWithStrokeID:(_CRLPKStrokeID *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStrokeID:(_CRLPKStrokeID *)a3;
@end

@implementation _CRLPKStrokeIDWrapper

- (_CRLPKStrokeIDWrapper)initWithStrokeID:(_CRLPKStrokeID *)a3
{
  v6.receiver = self;
  v6.super_class = _CRLPKStrokeIDWrapper;
  result = [(_CRLPKStrokeIDWrapper *)&v6 init];
  v5 = *&a3->replicaUUID[12];
  *&result->_strokeID.clock = *&a3->clock;
  *&result->_strokeID.replicaUUID[12] = v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  [(_CRLPKStrokeIDWrapper *)self strokeID];
  if (v4)
  {
    [v4 strokeID];
    v5 = v8;
  }

  else
  {
    v5 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v6 = v12 == v5 && !sub_1004A262C(v13, &v9) && v14 == HIDWORD(v11);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CRLPKStrokeIDWrapper allocWithZone:a3];
  [(_CRLPKStrokeIDWrapper *)self strokeID];
  return [(_CRLPKStrokeIDWrapper *)v4 initWithStrokeID:&v6];
}

- (void)setStrokeID:(_CRLPKStrokeID *)a3
{
  v3 = *&a3->clock;
  *&self->_strokeID.replicaUUID[12] = *&a3->replicaUUID[12];
  *&self->_strokeID.clock = v3;
}

@end