@interface MTRDistinguishedNameInfo
- (BOOL)isEqual:(id)equal;
- (MTRDistinguishedNameInfo)initWithDN:(const void *)n;
- (NSSet)caseAuthenticatedTags;
@end

@implementation MTRDistinguishedNameInfo

- (MTRDistinguishedNameInfo)initWithDN:(const void *)n
{
  v12.receiver = self;
  v12.super_class = MTRDistinguishedNameInfo;
  result = [(MTRDistinguishedNameInfo *)&v12 init];
  if (result)
  {
    v5 = *n;
    *&result->_dn.rdn[0].mChipVal = *(n + 1);
    result->_dn.rdn[0].mString = v5;
    v6 = *(n + 2);
    v7 = *(n + 3);
    v8 = *(n + 4);
    *&result->_dn.rdn[2].mChipVal = *(n + 5);
    result->_dn.rdn[2].mString = v8;
    *&result->_dn.rdn[1].mChipVal = v7;
    result->_dn.rdn[1].mString = v6;
    v9 = *(n + 6);
    v10 = *(n + 7);
    v11 = *(n + 8);
    *&result->_dn.rdn[4].mChipVal = *(n + 9);
    result->_dn.rdn[4].mString = v11;
    *&result->_dn.rdn[3].mChipVal = v10;
    result->_dn.rdn[3].mString = v9;
  }

  return result;
}

- (NSSet)caseAuthenticatedTags
{
  v2 = 0;
  p_mAttrOID = &self->_dn.rdn[0].mAttrOID;
  v4 = 160;
  do
  {
    if (*p_mAttrOID == 790)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(p_mAttrOID - 1)];
      if (v2)
      {
        [v2 addObject:v5];
      }

      else
      {
        v2 = [MEMORY[0x277CBEB58] setWithObject:v5];
      }
    }

    else if (!*p_mAttrOID)
    {
      break;
    }

    p_mAttrOID += 16;
    v4 -= 32;
  }

  while (v4);
  if (v2)
  {
    v6 = [v2 copy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && sub_23949EB88(&self->_dn, &equalCopy->_dn);
  }

  return v6;
}

@end