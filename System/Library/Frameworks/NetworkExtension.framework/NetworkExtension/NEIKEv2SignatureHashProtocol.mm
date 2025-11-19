@interface NEIKEv2SignatureHashProtocol
- (BOOL)isEqual:(id)a3;
- (NEIKEv2SignatureHashProtocol)initWithHashType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation NEIKEv2SignatureHashProtocol

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEIKEv2SignatureHashProtocol *)self hashType];

  return [v4 initWithHashType:v5];
}

- (int64_t)compare:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[NEIKEv2SignatureHashProtocol hashType](self, "hashType")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 hashType];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(NEIKEv2SignatureHashProtocol *)self hashType];
    v7 = [v5 hashType];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  String = NEIKEv2HashTypeCreateString([(NEIKEv2SignatureHashProtocol *)self hashType]);

  return String;
}

- (NEIKEv2SignatureHashProtocol)initWithHashType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2SignatureHashProtocol;
  v4 = [(NEIKEv2SignatureHashProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_hashType = a3;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

@end