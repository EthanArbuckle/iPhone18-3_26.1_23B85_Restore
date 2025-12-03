@interface _ADPBLocationSetPeerLocationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)ad_location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_ad_performForPeerLocationWithCompletion:(id)completion;
- (void)ad_setLocation:(id)location;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBLocationSetPeerLocationRequest

- (void)_ad_performForPeerLocationWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    ad_location = [(_ADPBLocationSetPeerLocationRequest *)self ad_location];
    (*(completion + 2))(completionCopy, ad_location);
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(_ADPBLocationSetPeerLocationRequest *)self setCodedLocation:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    codedLocation = self->_codedLocation;
    if (codedLocation | equalCopy[1])
    {
      v6 = [(NSData *)codedLocation isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_codedLocation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  codedLocation = self->_codedLocation;
  if (codedLocation)
  {
    [to setCodedLocation:codedLocation];
  }
}

- (void)writeTo:(id)to
{
  if (self->_codedLocation)
  {
    PBDataWriterWriteDataField();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v19 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v19 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v19 & 0x7F) << v6;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = PBReaderReadData();
        codedLocation = self->_codedLocation;
        self->_codedLocation = v14;
      }

      else
      {
        v16 = PBReaderSkipValueWithTag();
        if (!v16)
        {
          return v16;
        }
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v16) = [from hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  codedLocation = self->_codedLocation;
  if (codedLocation)
  {
    [v3 setObject:codedLocation forKey:@"coded_location"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBLocationSetPeerLocationRequest;
  v3 = [(_ADPBLocationSetPeerLocationRequest *)&v7 description];
  dictionaryRepresentation = [(_ADPBLocationSetPeerLocationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)ad_setLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v5 encodeObject:locationCopy forKey:@"Location"];

    encodedData = [v5 encodedData];
    v7 = [encodedData copy];
  }

  else
  {
    v7 = 0;
  }

  [(_ADPBLocationSetPeerLocationRequest *)self setCodedLocation:v7];
}

- (id)ad_location
{
  codedLocation = [(_ADPBLocationSetPeerLocationRequest *)self codedLocation];
  if (codedLocation)
  {
    v3 = [[NSKeyedUnarchiver alloc] initForReadingFromData:codedLocation error:0];
    v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    [v3 finishDecoding];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end