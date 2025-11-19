@interface MTRDistinguishedNameInfo
- (BOOL)isEqual:(id)a3;
- (MTRDistinguishedNameInfo)initWithDN:(const void *)a3;
- (NSSet)caseAuthenticatedTags;
@end

@implementation MTRDistinguishedNameInfo

- (MTRDistinguishedNameInfo)initWithDN:(const void *)a3
{
  v12.receiver = self;
  v12.super_class = MTRDistinguishedNameInfo;
  result = [(MTRDistinguishedNameInfo *)&v12 init];
  if (result)
  {
    v5 = *a3;
    *&result->_dn.rdn[0].mChipVal = *(a3 + 1);
    result->_dn.rdn[0].mString = v5;
    v6 = *(a3 + 2);
    v7 = *(a3 + 3);
    v8 = *(a3 + 4);
    *&result->_dn.rdn[2].mChipVal = *(a3 + 5);
    result->_dn.rdn[2].mString = v8;
    *&result->_dn.rdn[1].mChipVal = v7;
    result->_dn.rdn[1].mString = v6;
    v9 = *(a3 + 6);
    v10 = *(a3 + 7);
    v11 = *(a3 + 8);
    *&result->_dn.rdn[4].mChipVal = *(a3 + 9);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && sub_23949EB88(&self->_dn, &v4->_dn);
  }

  return v6;
}

@end