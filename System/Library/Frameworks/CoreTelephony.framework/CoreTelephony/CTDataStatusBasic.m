@interface CTDataStatusBasic
- (CTDataStatusBasic)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTDataStatusBasic

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", attached=%d", -[CTDataStatusBasic attached](self, "attached")];
  [v3 appendFormat:@", hasIndicator=%d", -[CTDataStatusBasic hasIndicator](self, "hasIndicator")];
  [v3 appendFormat:@", inHomeCountry=%d", -[CTDataStatusBasic inHomeCountry](self, "inHomeCountry")];
  [v3 appendFormat:@", roamAllowed=%d", -[CTDataStatusBasic roamAllowed](self, "roamAllowed")];
  [v3 appendFormat:@", cellularDataPossible=%d", -[CTDataStatusBasic cellularDataPossible](self, "cellularDataPossible")];
  [v3 appendFormat:@", newRadioCoverage=%d", -[CTDataStatusBasic newRadioCoverage](self, "newRadioCoverage")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAttached:{-[CTDataStatusBasic attached](self, "attached")}];
  [v4 setHasIndicator:{-[CTDataStatusBasic hasIndicator](self, "hasIndicator")}];
  [v4 setInHomeCountry:{-[CTDataStatusBasic inHomeCountry](self, "inHomeCountry")}];
  [v4 setRoamAllowed:{-[CTDataStatusBasic roamAllowed](self, "roamAllowed")}];
  [v4 setCellularDataPossible:{-[CTDataStatusBasic cellularDataPossible](self, "cellularDataPossible")}];
  [v4 setNewRadioCoverage:{-[CTDataStatusBasic newRadioCoverage](self, "newRadioCoverage")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CTDataStatusBasic *)self attached];
  if ([(CTDataStatusBasic *)self hasIndicator])
  {
    v4 |= 2u;
  }

  if ([(CTDataStatusBasic *)self inHomeCountry])
  {
    v4 |= 4u;
  }

  if ([(CTDataStatusBasic *)self roamAllowed])
  {
    v4 |= 8u;
  }

  if ([(CTDataStatusBasic *)self cellularDataPossible])
  {
    v4 |= 0x10u;
  }

  if ([(CTDataStatusBasic *)self newRadioCoverage])
  {
    v5 = v4 | 0x20;
  }

  else
  {
    v5 = v4;
  }

  [v6 encodeInt:v5 forKey:@"DataStatusFlags"];
}

- (CTDataStatusBasic)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTDataStatusBasic;
  v5 = [(CTDataStatusBasic *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"DataStatusFlags"];
    v5[8] = v6 & 1;
    v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    *(v5 + 9) = vuzp1_s8(v7, v7).u32[0];
    v5[13] = (v6 & 0x20) != 0;
  }

  return v5;
}

@end