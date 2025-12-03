@interface BKEpubCFILocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
+ (id)locationForCFI:(id)i error:(id *)error;
+ (id)unknownLocation;
- (BKEpubCFILocation)initWithCFI:(id)i;
- (BKEpubCFILocation)initWithCFI:(id)i error:(id *)error;
- (BKEpubCFILocation)initWithCoder:(id)coder;
- (BKEpubCFILocation)initWithLocationDictionary:(id)dictionary;
- (BKEpubCFILocation)locationWithAdjustedSpineIndex:(int64_t)index error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)cfiString;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ensureRange;
- (id)head;
- (id)intersectWithRangeFromHeadOf:(id)of toTailOf:(id)tailOf;
- (id)rebaseCFIWithHead:(id)head;
- (id)serializeLocationToDictionary;
- (id)unionWithCFI:(id)i;
- (int64_t)compare:(id)compare;
- (int64_t)ordinal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setOrdinal:(int64_t)ordinal;
- (void)updateOrdinalForBookInfo:(id)info;
@end

@implementation BKEpubCFILocation

+ (id)unknownLocation
{
  if (qword_22D0F0 != -1)
  {
    sub_13850C();
  }

  v3 = qword_22D0E8;

  return v3;
}

- (NSString)cfiString
{
  v2 = [(BKEpubCFILocation *)self cfi];
  string = [v2 string];

  return string;
}

+ (id)locationForCFI:(id)i error:(id *)error
{
  iCopy = i;
  v7 = [[self alloc] initWithCFI:iCopy error:error];

  return v7;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKEpubCFILocation"])
  {
    v5 = [[BKEpubCFILocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKEpubCFILocation)initWithCFI:(id)i
{
  iCopy = i;
  v9.receiver = self;
  v9.super_class = BKEpubCFILocation;
  v6 = [(BKEpubCFILocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfi, i);
    v7->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BKEpubCFILocation)initWithCFI:(id)i error:(id *)error
{
  iCopy = i;
  v20.receiver = self;
  v20.super_class = BKEpubCFILocation;
  v7 = [(BKEpubCFILocation *)&v20 init];
  if (v7)
  {
    if ([BCCFI isFragmentEpubCFIFunction:iCopy])
    {
      v19 = 0;
      v8 = [BCCFI cfiWithString:iCopy error:&v19];
      v9 = v19;
      cfi = v7->_cfi;
      v7->_cfi = v8;
    }

    else
    {
      v11 = [iCopy rangeOfString:@"epubcfi"];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [NSError errorWithDomain:@"BKEpubCFIErrorDomain" code:1 userInfo:0];
      }

      else
      {
        v12 = [iCopy substringFromIndex:v11];
        v18 = 0;
        v13 = [BCCFI cfiWithString:v12 error:&v18];
        v9 = v18;
        v14 = v7->_cfi;
        v7->_cfi = v13;
      }
    }

    v7->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v15 = _AELog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = iCopy;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      if (error)
      {
        v16 = v9;
        *error = v9;
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BKEpubCFILocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v14.receiver = self;
  v14.super_class = BKEpubCFILocation;
  v6 = [(BKLocation *)&v14 initWithLocationDictionary:v5];

  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"cfi"];
    v13 = 0;
    v8 = [[BCCFI alloc] initWithCFI:v7 error:&v13];
    v9 = v13;
    cfi = v6->_cfi;
    v6->_cfi = v8;

    if (v9)
    {
      v11 = _AELog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BKEpubCFILocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BKEpubCFILocation;
  v5 = [(BKLocation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfi"];
    v12 = 0;
    v7 = [[BCCFI alloc] initWithCFI:v6 error:&v12];
    v8 = v12;
    cfi = v5->_cfi;
    v5->_cfi = v7;

    if (v8)
    {
      v10 = _AELog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKEpubCFILocation;
  serializeLocationToDictionary = [(BKLocation *)&v7 serializeLocationToDictionary];
  cfiString = [(BKEpubCFILocation *)self cfiString];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", @"BKEpubCFILocation", @"class", cfiString, @"cfi", 0];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BKEpubCFILocation;
  coderCopy = coder;
  [(BKLocation *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BKEpubCFILocation *)self cfiString:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"cfi"];
}

- (void)setOrdinal:(int64_t)ordinal
{
  v6 = [(BKEpubCFILocation *)self cfi];
  v5 = [v6 cfiWithAdjustedSpineIndex:ordinal error:0];
  [(BKEpubCFILocation *)self setCfi:v5];
}

- (int64_t)ordinal
{
  v2 = [(BKEpubCFILocation *)self cfi];
  spineIndex = [v2 spineIndex];

  return spineIndex;
}

- (void)updateOrdinalForBookInfo:(id)info
{
  infoCopy = info;
  v5 = [(BKEpubCFILocation *)self cfi];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C89B4;
  v8[3] = &unk_1E5358;
  v9 = infoCopy;
  v6 = infoCopy;
  v7 = [v5 cfiWithSpineIndexAdjustedUsingAssertionBlock:v8];
  [(BKEpubCFILocation *)self setCfi:v7];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = BKEpubCFILocation, [(BKLocation *)&v9 isEqual:equalCopy]))
  {
    v5 = [(BKEpubCFILocation *)self cfi];
    v6 = [equalCopy cfi];
    v7 = [v5 compare:v6] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(BKEpubCFILocation *)self cfi];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [compareCopy cfi];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v5 copy];
  [v4 setCfi:v6];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKEpubCFILocation *)self cfi];
  redactedString = [v5 redactedString];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ pageOffset:%lu>", v4, self, redactedString, [(BKEpubCFILocation *)self pageOffset]];

  return v7;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v5 debugDescription];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ pageOffset:%lu>", v4, self, v6, [(BKEpubCFILocation *)self pageOffset]];

  return v7;
}

- (id)intersectWithRangeFromHeadOf:(id)of toTailOf:(id)tailOf
{
  tailOfCopy = tailOf;
  ofCopy = of;
  v8 = [(BKEpubCFILocation *)self cfi];
  v9 = [ofCopy cfi];

  v10 = [tailOfCopy cfi];

  v11 = [v8 intersectWithRangeFromHeadOf:v9 toTailOf:v10];

  if (v11)
  {
    v12 = [[BKEpubCFILocation alloc] initWithCFI:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rebaseCFIWithHead:(id)head
{
  cfi = self->_cfi;
  v4 = [head cfi];
  v5 = [(BCCFI *)cfi rebaseCFIWithHead:v4];

  if (v5)
  {
    v6 = [[BKEpubCFILocation alloc] initWithCFI:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unionWithCFI:(id)i
{
  iCopy = i;
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [iCopy cfi];

  v7 = [v5 unionWithCFI:v6];

  if (v7)
  {
    v8 = [[BKEpubCFILocation alloc] initWithCFI:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)ensureRange
{
  ensureRange = [(BCCFI *)self->_cfi ensureRange];
  if (ensureRange)
  {
    v3 = [[BKEpubCFILocation alloc] initWithCFI:ensureRange];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)head
{
  if (([(BCCFI *)self->_cfi isRange]& 1) != 0)
  {
    v3 = [BKEpubCFILocation alloc];
    headCFI = [(BCCFI *)self->_cfi headCFI];
    selfCopy = [(BKEpubCFILocation *)v3 initWithCFI:headCFI];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BKEpubCFILocation)locationWithAdjustedSpineIndex:(int64_t)index error:(id *)error
{
  v4 = [(BCCFI *)self->_cfi cfiWithAdjustedSpineIndex:index error:error];
  if (v4)
  {
    v5 = [[BKEpubCFILocation alloc] initWithCFI:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end