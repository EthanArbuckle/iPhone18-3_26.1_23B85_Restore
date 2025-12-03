@interface PHASESharedEntityDebugInfo
- (BOOL)isEqual:(id)equal;
- (PHASESharedEntityDebugInfo)initWithCoder:(id)coder;
- (__n128)setTransform:(__n128)transform;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHASESharedEntityDebugInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  [(PHASESharedEntityDebugInfo *)self transform];
  v15 = v6;
  v16 = v5;
  v18 = v7;
  v17 = v8;
  [equalCopy transform];
  LODWORD(self) = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v16, v9), vceqq_f32(v15, v10)), vandq_s8(vceqq_f32(v18, v11), vceqq_f32(v17, v12))));

  return self >> 31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&self[1] length:64];
  [coderCopy encodeObject:v4 forKey:@"transform"];

  [coderCopy encodeInt:self->_referenceCount forKey:@"referenceCount"];
}

- (PHASESharedEntityDebugInfo)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PHASESharedEntityDebugInfo;
  v5 = [(PHASESharedEntityDebugInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transform"];
    v7 = v6;
    if (v6)
    {
      [v6 getBytes:&v5[1] length:64];
    }

    else
    {
      v8 = **(Phase::Logger::GetInstance(0) + 1040);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "PHASESharedEntityDebug.mm";
        v16 = 1024;
        v17 = 32;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PHASESharedEntityDebugInfo does not have transform object", buf, 0x12u);
      }

      v10 = *(MEMORY[0x277D860B8] + 32);
      v9 = *(MEMORY[0x277D860B8] + 48);
      v11 = *(MEMORY[0x277D860B8] + 16);
      v5[1] = *MEMORY[0x277D860B8];
      v5[2] = v11;
      v5[3] = v10;
      v5[4] = v9;
    }

    v5->_referenceCount = [coderCopy decodeIntForKey:@"referenceCount"];
  }

  return v5;
}

- (__n128)setTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end