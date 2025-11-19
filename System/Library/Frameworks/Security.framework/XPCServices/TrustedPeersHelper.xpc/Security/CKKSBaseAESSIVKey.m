@interface CKKSBaseAESSIVKey
- (BOOL)isEqual:(id)a3;
- (CKKSBaseAESSIVKey)init;
- (CKKSBaseAESSIVKey)initWithBase64:(id)a3;
- (CKKSBaseAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CKKSBaseAESSIVKey

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  size = self->size;

  return [v4 initWithBytes:self->key len:size];
}

- (void)dealloc
{
  [(CKKSBaseAESSIVKey *)self zeroKey];
  v3.receiver = self;
  v3.super_class = CKKSBaseAESSIVKey;
  [(CKKSBaseAESSIVKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    size = self->size;
    if (size == v4[11] && !memcmp(self->key, v4 + 1, size))
    {
      v6 = 1;
    }
  }

  return v6;
}

- (CKKSBaseAESSIVKey)initWithBase64:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKKSBaseAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v9 init];
  if (!v5)
  {
LABEL_6:
    v7 = v5;
    goto LABEL_7;
  }

  v6 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
  v7 = v6;
  if (v6)
  {
    if ([(CKKSBaseAESSIVKey *)v6 length]<= 0x50)
    {
      v5->size = [(CKKSBaseAESSIVKey *)v7 length];
      memcpy(v5->key, [(CKKSBaseAESSIVKey *)v7 bytes], v5->size);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (CKKSBaseAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = CKKSBaseAESSIVKey;
  v6 = [(CKKSBaseAESSIVKey *)&v9 init];
  v7 = v6;
  if (a4 <= 0x50 && v6)
  {
    v6->size = a4;
    memcpy(v6->key, a3, a4);
  }

  return v7;
}

- (CKKSBaseAESSIVKey)init
{
  v5.receiver = self;
  v5.super_class = CKKSBaseAESSIVKey;
  v2 = [(CKKSBaseAESSIVKey *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->size = 80;
    [(CKKSBaseAESSIVKey *)v2 zeroKey];
  }

  return v3;
}

@end