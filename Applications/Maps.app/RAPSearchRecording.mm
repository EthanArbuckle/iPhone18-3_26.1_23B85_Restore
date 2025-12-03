@interface RAPSearchRecording
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAuxiliaryControls:(id)controls;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RAPSearchRecording

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  request = self->_request;
  v6 = *(fromCopy + 4);
  if (request)
  {
    if (v6)
    {
      [(GEOPlaceSearchRequest *)request mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(RAPSearchRecording *)self setRequest:?];
  }

  response = self->_response;
  v8 = *(fromCopy + 5);
  if (response)
  {
    if (v8)
    {
      [(GEOPlaceSearchResponse *)response mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(RAPSearchRecording *)self setResponse:?];
  }

  correctedSearchTemplate = self->_correctedSearchTemplate;
  v10 = *(fromCopy + 3);
  if (correctedSearchTemplate)
  {
    if (v10)
    {
      [(GEORPCorrectedSearch *)correctedSearchTemplate mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(RAPSearchRecording *)self setCorrectedSearchTemplate:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 2);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(RAPSearchRecording *)self addAuxiliaryControls:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  if (*(fromCopy + 48))
  {
    self->_originatingAuxiliaryControlIndex = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(GEOPlaceSearchRequest *)self->_request hash];
  v4 = [(GEOPlaceSearchResponse *)self->_response hash];
  v5 = [(GEORPCorrectedSearch *)self->_correctedSearchTemplate hash];
  v6 = [(NSMutableArray *)self->_auxiliaryControls hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_originatingAuxiliaryControlIndex;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  request = self->_request;
  if (request | *(equalCopy + 4))
  {
    if (![(GEOPlaceSearchRequest *)request isEqual:?])
    {
      goto LABEL_14;
    }
  }

  response = self->_response;
  if (response | *(equalCopy + 5))
  {
    if (![(GEOPlaceSearchResponse *)response isEqual:?])
    {
      goto LABEL_14;
    }
  }

  correctedSearchTemplate = self->_correctedSearchTemplate;
  if (correctedSearchTemplate | *(equalCopy + 3))
  {
    if (![(GEORPCorrectedSearch *)correctedSearchTemplate isEqual:?])
    {
      goto LABEL_14;
    }
  }

  auxiliaryControls = self->_auxiliaryControls;
  if (auxiliaryControls | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)auxiliaryControls isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_originatingAuxiliaryControlIndex == *(equalCopy + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOPlaceSearchRequest *)self->_request copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(GEOPlaceSearchResponse *)self->_response copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(GEORPCorrectedSearch *)self->_correctedSearchTemplate copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_auxiliaryControls;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addAuxiliaryControls:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    v5[1] = self->_originatingAuxiliaryControlIndex;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_request)
  {
    [toCopy setRequest:?];
  }

  if (self->_response)
  {
    [toCopy setResponse:?];
  }

  if (self->_correctedSearchTemplate)
  {
    [toCopy setCorrectedSearchTemplate:?];
  }

  if ([(RAPSearchRecording *)self auxiliaryControlsCount])
  {
    [toCopy clearAuxiliaryControls];
    auxiliaryControlsCount = [(RAPSearchRecording *)self auxiliaryControlsCount];
    if (auxiliaryControlsCount)
    {
      v5 = auxiliaryControlsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(RAPSearchRecording *)self auxiliaryControlsAtIndex:i];
        [toCopy addAuxiliaryControls:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_originatingAuxiliaryControlIndex;
    *(toCopy + 48) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_correctedSearchTemplate)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_auxiliaryControls;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v26 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v26[0] & 0x7F) << v6;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 2)
      {
        break;
      }

      if (v14 == 3)
      {
        v22 = objc_alloc_init(GEORPCorrectedSearch);
        v23 = 24;
LABEL_36:
        objc_storeStrong(&self->PBCodable_opaque[v23], v22);
        goto LABEL_37;
      }

      if (v14 != 4)
      {
        if (v14 == 5)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v26[0]) = 0;
            v18 = [from position] + 1;
            if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:v26 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v17 |= (v26[0] & 0x7F) << v15;
            if ((v26[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([from hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          self->_originatingAuxiliaryControlIndex = v21;
          goto LABEL_46;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      v22 = objc_alloc_init(GEORPAuxiliaryControl);
      [(RAPSearchRecording *)self addAuxiliaryControls:v22];
LABEL_37:
      v26[0] = 0;
      v26[1] = 0;
      if (!PBReaderPlaceMark() || ![v22 readFrom:from])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 == 1)
    {
      v22 = objc_alloc_init(GEOPlaceSearchRequest);
      v23 = 32;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_40;
      }

      v22 = objc_alloc_init(GEOPlaceSearchResponse);
      v23 = 40;
    }

    goto LABEL_36;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(GEOPlaceSearchRequest *)request dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"request"];
  }

  response = self->_response;
  if (response)
  {
    dictionaryRepresentation2 = [(GEOPlaceSearchResponse *)response dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"response"];
  }

  correctedSearchTemplate = self->_correctedSearchTemplate;
  if (correctedSearchTemplate)
  {
    dictionaryRepresentation3 = [(GEORPCorrectedSearch *)correctedSearchTemplate dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"correctedSearchTemplate"];
  }

  if ([(NSMutableArray *)self->_auxiliaryControls count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_auxiliaryControls, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_auxiliaryControls;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"auxiliaryControls"];
  }

  if (*&self->_has)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_originatingAuxiliaryControlIndex];
    [v3 setObject:v17 forKey:@"originatingAuxiliaryControlIndex"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RAPSearchRecording;
  v3 = [(RAPSearchRecording *)&v7 description];
  dictionaryRepresentation = [(RAPSearchRecording *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addAuxiliaryControls:(id)controls
{
  controlsCopy = controls;
  auxiliaryControls = self->_auxiliaryControls;
  v8 = controlsCopy;
  if (!auxiliaryControls)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_auxiliaryControls;
    self->_auxiliaryControls = v6;

    controlsCopy = v8;
    auxiliaryControls = self->_auxiliaryControls;
  }

  [(NSMutableArray *)auxiliaryControls addObject:controlsCopy];
}

@end