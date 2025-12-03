@interface CategoryKey
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CategoryKey

- (unint64_t)hash
{
  styleAttributes = [(GEOSearchCategory *)self->_category styleAttributes];
  v4 = [styleAttributes hash];
  v5 = [(NSString *)self->_prefix hash];
  scale = self->_scale;
  v7 = scale;
  LODWORD(scale) = *&self->_transitMode;
  v8 = vmovl_u16(vshl_u16(*&vmovl_u8(*&scale), 0x5000400030002));
  v9.i64[0] = v8.u32[2];
  v9.i64[1] = v8.u32[3];
  v10.i64[0] = 255;
  v10.i64[1] = 255;
  v11 = vandq_s8(v9, v10);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v12 = vaddvq_s64(vaddq_s64(vandq_s8(v9, v10), v11)) + v7 + 2 * (v4 + v5);

  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[8] = self->_transitMode;
  objc_storeStrong(v4 + 3, self->_prefix);
  objc_storeStrong(v4 + 2, self->_category);
  *(v4 + 4) = *&self->_scale;
  *(v4 + 40) = self->_size;
  v4[9] = self->_isCarPlay;
  v4[10] = self->_isNightMode;
  v4[11] = self->_renderAsTemplate;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_17;
  }

  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (self->_scale == v6[4] && (self->_size.width == v6[5] ? (v8 = self->_size.height == v6[6]) : (v8 = 0), v8 && self->_transitMode == *(v6 + 8) && self->_isCarPlay == *(v6 + 9) && self->_isNightMode == *(v6 + 10) && self->_renderAsTemplate == *(v6 + 11) && ((prefix = self->_prefix, prefix == v7[3]) || [(NSString *)prefix isEqualToString:?])))
    {
      styleAttributes = [(GEOSearchCategory *)self->_category styleAttributes];
      styleAttributes2 = [v7[2] styleAttributes];
      v12 = GeoCodecsFeatureStyleAttributesCompare() == 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_17:
    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (id)description
{
  category = [(CategoryKey *)self category];
  displayString = [category displayString];
  prefix = [(CategoryKey *)self prefix];
  if ([(CategoryKey *)self transitMode])
  {
    v6 = @"yes";
  }

  else
  {
    v6 = @"no";
  }

  [(CategoryKey *)self size];
  v7 = NSStringFromCGSize(v15);
  [(CategoryKey *)self scale];
  v9 = v8;
  if ([(CategoryKey *)self isCarPlay])
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  if ([(CategoryKey *)self renderAsTemplate])
  {
    v11 = @"yes";
  }

  else
  {
    v11 = @"no";
  }

  v12 = [NSString stringWithFormat:@"CategoryKey: %@ <prefix:%@, transit:%@, size:%@, scale:%#.1f isCarplay=%@>, renderAsTemplate:%@", displayString, prefix, v6, v7, v9, v10, v11];

  return v12;
}

@end