@interface _CLSignificantRegion
- (_CLSignificantRegion)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLSignificantRegion

- (_CLSignificantRegion)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = _CLSignificantRegion;
  v6 = [(CLCircularRegion *)&v9 initWithCoder:a3];
  v7 = v6;
  if (v6)
  {
    [(CLRegion *)v6 setType:3];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6.receiver = self;
  v6.super_class = _CLSignificantRegion;
  [(CLCircularRegion *)&v6 encodeWithCoder:a3];
  [a3 encodeInt:-[CLRegion type](self forKey:{"type"), @"kCLSignificantRegionCodingKeyType"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _CLSignificantRegion;
  v4 = [(CLCircularRegion *)&v6 copyWithZone:a3];
  if (v4)
  {
    [v4 setType:{-[CLRegion type](self, "type")}];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CLRegion *)self identifier];
  [(CLCircularRegion *)self geoCenter];
  v6 = v5;
  [(CLCircularRegion *)self geoCenter];
  v8 = v7;
  [(CLCircularRegion *)self geoRadius];
  return [v3 stringWithFormat:@"CLSignificantRegion (identifier:'%@', center:<%+.8f, %+.8f>, radius:%.2fm, frame:%d)", v4, v6, v8, v9, -[CLCircularRegion geoReferenceFrame](self, "geoReferenceFrame")];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _CLSignificantRegion;
  v3 = [(CLCircularRegion *)&v5 hash];
  return v3 ^ [(CLRegion *)self type];
}

@end