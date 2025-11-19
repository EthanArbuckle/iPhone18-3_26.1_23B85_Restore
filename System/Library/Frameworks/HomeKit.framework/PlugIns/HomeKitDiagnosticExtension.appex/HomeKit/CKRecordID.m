@interface CKRecordID
- (NSString)hmd_canonicalStringRepresentation;
- (id)hmd_initWithCanonicalStringRepresentation:(id)a3;
@end

@implementation CKRecordID

- (NSString)hmd_canonicalStringRepresentation
{
  v3 = sub_10000A384();
  v4 = [(CKRecordID *)self zoneID];
  v5 = [v4 ownerName];
  v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  v7 = [v4 zoneName];
  v8 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  v9 = [(CKRecordID *)self recordName];
  v10 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  v11 = [NSString stringWithFormat:@"%@/%@/%@", v6, v8, v10];

  return v11;
}

- (id)hmd_initWithCanonicalStringRepresentation:(id)a3
{
  v3 = a3;
  if (qword_10003B188 != -1)
  {
    dispatch_once(&qword_10003B188, &stru_100030910);
  }

  v4 = qword_10003B190;
  v5 = [[NSScanner alloc] initWithString:v3];
  [v5 setCharactersToBeSkipped:0];
  v23 = 0;
  v6 = [v5 scanCharactersFromSet:v4 intoString:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  v9 = [v7 stringByRemovingPercentEncoding];

  if (!v9)
  {
    v8 = 0;
LABEL_19:
    v12 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_20;
  }

  if (![v9 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
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
    v8 = v9;
    goto LABEL_20;
  }

  v13 = [v11 stringByRemovingPercentEncoding];

  if (!v13)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (![v13 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
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
    v8 = v9;
    v12 = v13;
    goto LABEL_20;
  }

  v17 = [v15 stringByRemovingPercentEncoding];

  if (!v17)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ([v17 length] && objc_msgSend(v5, "isAtEnd"))
  {
    v18 = [[CKRecordZoneID alloc] initWithZoneName:v13 ownerName:v9];
    v19 = [[CKRecordID alloc] initWithRecordName:v17 zoneID:v18];
  }

  else
  {
    v19 = 0;
  }

  v8 = v9;
  v12 = v13;
  v16 = v17;
LABEL_20:

  return v19;
}

@end