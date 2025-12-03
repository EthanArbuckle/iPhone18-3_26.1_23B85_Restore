@interface _CRLPKStrokeIDWrapper
- (BOOL)isEqual:(id)equal;
- (_CRLPKStrokeIDWrapper)initWithStrokeID:(_CRLPKStrokeID *)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStrokeID:(_CRLPKStrokeID *)d;
@end

@implementation _CRLPKStrokeIDWrapper

- (_CRLPKStrokeIDWrapper)initWithStrokeID:(_CRLPKStrokeID *)d
{
  v6.receiver = self;
  v6.super_class = _CRLPKStrokeIDWrapper;
  result = [(_CRLPKStrokeIDWrapper *)&v6 init];
  v5 = *&d->replicaUUID[12];
  *&result->_strokeID.clock = *&d->clock;
  *&result->_strokeID.replicaUUID[12] = v5;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  [(_CRLPKStrokeIDWrapper *)self strokeID];
  if (equalCopy)
  {
    [equalCopy strokeID];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CRLPKStrokeIDWrapper allocWithZone:zone];
  [(_CRLPKStrokeIDWrapper *)self strokeID];
  return [(_CRLPKStrokeIDWrapper *)v4 initWithStrokeID:&v6];
}

- (void)setStrokeID:(_CRLPKStrokeID *)d
{
  v3 = *&d->clock;
  *&self->_strokeID.replicaUUID[12] = *&d->replicaUUID[12];
  *&self->_strokeID.clock = v3;
}

@end