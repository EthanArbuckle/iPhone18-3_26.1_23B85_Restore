@interface TFFeedback
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TFFeedback

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFFeedback;
  v3 = [(TFFeedback *)&v7 description];
  v4 = [(TFFeedback *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  email = self->_email;
  if (email)
  {
    [v3 setObject:email forKey:@"email"];
  }

  if ([(NSMutableArray *)self->_screenshots count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_screenshots, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_screenshots;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"screenshots"];
  }

  comment = self->_comment;
  if (comment)
  {
    [v4 setObject:comment forKey:@"comment"];
  }

  incidentId = self->_incidentId;
  if (incidentId)
  {
    [v4 setObject:incidentId forKey:@"incidentId"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_email)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_screenshots;
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

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_incidentId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_email copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_screenshots;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) copyWithZone:{a3, v19}];
        sub_100230CE0(v5, v13);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_comment copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_incidentId copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((email = self->_email, !(email | v4[2])) || -[NSString isEqual:](email, "isEqual:")) && ((screenshots = self->_screenshots, !(screenshots | v4[4])) || -[NSMutableArray isEqual:](screenshots, "isEqual:")) && ((comment = self->_comment, !(comment | v4[1])) || -[NSString isEqual:](comment, "isEqual:")))
  {
    incidentId = self->_incidentId;
    if (incidentId | v4[3])
    {
      v9 = [(NSString *)incidentId isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_email hash];
  v4 = [(NSMutableArray *)self->_screenshots hash]^ v3;
  v5 = [(NSString *)self->_comment hash];
  return v4 ^ v5 ^ [(NSString *)self->_incidentId hash];
}

@end