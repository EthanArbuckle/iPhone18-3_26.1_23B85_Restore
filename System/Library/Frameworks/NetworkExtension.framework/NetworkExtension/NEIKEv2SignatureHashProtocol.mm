@interface NEIKEv2SignatureHashProtocol
- (BOOL)isEqual:(id)equal;
- (NEIKEv2SignatureHashProtocol)initWithHashType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation NEIKEv2SignatureHashProtocol

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  hashType = [(NEIKEv2SignatureHashProtocol *)self hashType];

  return [v4 initWithHashType:hashType];
}

- (int64_t)compare:(id)compare
{
  v4 = MEMORY[0x1E696AD98];
  compareCopy = compare;
  v6 = [v4 numberWithUnsignedInteger:{-[NEIKEv2SignatureHashProtocol hashType](self, "hashType")}];
  v7 = MEMORY[0x1E696AD98];
  hashType = [compareCopy hashType];

  v9 = [v7 numberWithUnsignedInteger:hashType];
  v10 = [v6 compare:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    hashType = [(NEIKEv2SignatureHashProtocol *)self hashType];
    hashType2 = [v5 hashType];

    v8 = hashType == hashType2;
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

- (NEIKEv2SignatureHashProtocol)initWithHashType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = NEIKEv2SignatureHashProtocol;
  v4 = [(NEIKEv2SignatureHashProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_hashType = type;
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