@interface _ADPBLocationSetPeerLocationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)ad_location;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_ad_performForPeerLocationWithCompletion:(id)a3;
- (void)ad_setLocation:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBLocationSetPeerLocationRequest

- (void)_ad_performForPeerLocationWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(_ADPBLocationSetPeerLocationRequest *)self ad_location];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(_ADPBLocationSetPeerLocationRequest *)self setCodedLocation:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    codedLocation = self->_codedLocation;
    if (codedLocation | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_codedLocation copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  codedLocation = self->_codedLocation;
  if (codedLocation)
  {
    [a3 setCodedLocation:codedLocation];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_codedLocation)
  {
    PBDataWriterWriteDataField();
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v19 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v19 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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

      v17 = [a3 position];
    }

    while (v17 < [a3 length]);
  }

  LOBYTE(v16) = [a3 hasError] ^ 1;
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
  v4 = [(_ADPBLocationSetPeerLocationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)ad_setLocation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v5 encodeObject:v4 forKey:@"Location"];

    v6 = [v5 encodedData];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  [(_ADPBLocationSetPeerLocationRequest *)self setCodedLocation:v7];
}

- (id)ad_location
{
  v2 = [(_ADPBLocationSetPeerLocationRequest *)self codedLocation];
  if (v2)
  {
    v3 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v2 error:0];
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