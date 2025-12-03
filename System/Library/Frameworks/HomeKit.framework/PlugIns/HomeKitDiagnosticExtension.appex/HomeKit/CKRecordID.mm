@interface CKRecordID
- (NSString)hmd_canonicalStringRepresentation;
- (id)hmd_initWithCanonicalStringRepresentation:(id)representation;
@end

@implementation CKRecordID

- (NSString)hmd_canonicalStringRepresentation
{
  v3 = sub_10000A384();
  zoneID = [(CKRecordID *)self zoneID];
  ownerName = [zoneID ownerName];
  v6 = [ownerName stringByAddingPercentEncodingWithAllowedCharacters:v3];

  zoneName = [zoneID zoneName];
  v8 = [zoneName stringByAddingPercentEncodingWithAllowedCharacters:v3];

  recordName = [(CKRecordID *)self recordName];
  v10 = [recordName stringByAddingPercentEncodingWithAllowedCharacters:v3];

  v11 = [NSString stringWithFormat:@"%@/%@/%@", v6, v8, v10];

  return v11;
}

- (id)hmd_initWithCanonicalStringRepresentation:(id)representation
{
  representationCopy = representation;
  if (qword_10003B188 != -1)
  {
    dispatch_once(&qword_10003B188, &stru_100030910);
  }

  v4 = qword_10003B190;
  v5 = [[NSScanner alloc] initWithString:representationCopy];
  [v5 setCharactersToBeSkipped:0];
  v23 = 0;
  v6 = [v5 scanCharactersFromSet:v4 intoString:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  stringByRemovingPercentEncoding = [v7 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding)
  {
    v8 = 0;
LABEL_19:
    v12 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_20;
  }

  if (![stringByRemovingPercentEncoding length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
  {
    goto LABEL_16;
  }

  v22 = 0;
  v10 = [v5 scanCharactersFromSet:v4 intoString:&v22];
  v11 = v22;
  v12 = v11;
  if (!v10)
  {
LABEL_17:
    v16 = 0;
    v19 = 0;
    v8 = stringByRemovingPercentEncoding;
    goto LABEL_20;
  }

  stringByRemovingPercentEncoding2 = [v11 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding2)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (![stringByRemovingPercentEncoding2 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
  {
    goto LABEL_21;
  }

  v21 = 0;
  v14 = [v5 scanCharactersFromSet:v4 intoString:&v21];
  v15 = v21;
  v16 = v15;
  if (!v14)
  {
LABEL_22:
    v19 = 0;
    v8 = stringByRemovingPercentEncoding;
    v12 = stringByRemovingPercentEncoding2;
    goto LABEL_20;
  }

  stringByRemovingPercentEncoding3 = [v15 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding3)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ([stringByRemovingPercentEncoding3 length] && objc_msgSend(v5, "isAtEnd"))
  {
    v18 = [[CKRecordZoneID alloc] initWithZoneName:stringByRemovingPercentEncoding2 ownerName:stringByRemovingPercentEncoding];
    v19 = [[CKRecordID alloc] initWithRecordName:stringByRemovingPercentEncoding3 zoneID:v18];
  }

  else
  {
    v19 = 0;
  }

  v8 = stringByRemovingPercentEncoding;
  v12 = stringByRemovingPercentEncoding2;
  v16 = stringByRemovingPercentEncoding3;
LABEL_20:

  return v19;
}

@end