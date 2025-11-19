@interface AAPSyncState
- (AAPSyncState)initWithCoder:(id)a3;
- (AAPSyncState)initWithValidity:(id)a3 version:(int64_t)a4 keyAnchor:(id)a5 startAnchor:(id)a6 stopAnchor:(id)a7 apps:(id)a8 deletes:(id)a9;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_validate;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAPSyncState

- (AAPSyncState)initWithValidity:(id)a3 version:(int64_t)a4 keyAnchor:(id)a5 startAnchor:(id)a6 stopAnchor:(id)a7 apps:(id)a8 deletes:(id)a9
{
  v17.receiver = self;
  v17.super_class = AAPSyncState;
  v15 = [(AAPSyncState *)&v17 init];
  if (v15)
  {
    v15->_validity = [a3 copy];
    v15->_version = a4;
    v15->_keyAnchor = [a5 copy];
    v15->_startAnchor = [a6 copy];
    v15->_stopAnchor = [a7 copy];
    v15->_apps = [a8 copy];
    v15->_deletes = [a9 copy];
    [(AAPSyncState *)v15 _validate];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncState;
  [(AAPSyncState *)&v3 dealloc];
}

- (void)_validate
{
  if (!self->_validity)
  {
    sub_113EC(a2, self);
  }

  if (!self->_keyAnchor)
  {
    sub_11448(a2, self);
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  validity = self->_validity;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_114A4();
  }

  keyAnchor = self->_keyAnchor;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11500();
  }

  if (self->_startAnchor && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1155C();
  }

  if (self->_stopAnchor && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_115B8();
  }

  if (self->_apps && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11614();
  }

  if (self->_deletes && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11670();
  }

  if (!self->_stopAnchor && (self->_startAnchor || [(NSSet *)self->_apps count]|| [(NSArray *)self->_deletes count]))
  {
    sub_116CC(a2, self);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  apps = self->_apps;
  v7 = [(NSSet *)apps countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(apps);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_11728();
        }
      }

      v8 = [(NSSet *)apps countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  deletes = self->_deletes;
  v13 = [(NSArray *)deletes countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(deletes);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_11784();
        }
      }

      v14 = [(NSArray *)deletes countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (AAPSyncState)initWithCoder:(id)a3
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v5, 0];
  v10 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v18 = [a3 decodeObjectOfClass:v5 forKey:@"validity"];
  v11 = [a3 decodeIntegerForKey:@"version"];
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyAnchor"];
  v13 = [a3 decodeObjectOfClass:v6 forKey:@"startAnchor"];
  v14 = [a3 decodeObjectOfClass:v6 forKey:@"stopAnchor"];
  v15 = [a3 decodeObjectOfClasses:v9 forKey:@"apps"];
  v16 = [a3 decodeObjectOfClasses:v10 forKey:@"deletes"];
  if (self->_apps && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_117E0();
  }

  if (self->_deletes && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1183C();
  }

  return [(AAPSyncState *)self initWithValidity:v18 version:v11 keyAnchor:v12 startAnchor:v13 stopAnchor:v14 apps:v15 deletes:v16];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_validity forKey:@"validity"];
  [a3 encodeInteger:self->_version forKey:@"version"];
  [a3 encodeObject:self->_keyAnchor forKey:@"keyAnchor"];
  [a3 encodeObject:self->_startAnchor forKey:@"startAnchor"];
  [a3 encodeObject:self->_stopAnchor forKey:@"stopAnchor"];
  [a3 encodeObject:self->_apps forKey:@"apps"];
  deletes = self->_deletes;

  [a3 encodeObject:deletes forKey:@"deletes"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_validity hash];
  v4 = self->_version - v3 + 32 * v3;
  v5 = [(AAPSyncAnchor *)self->_keyAnchor hash]+ 32 * v4 - v4;
  v6 = [(AAPSyncAnchor *)self->_startAnchor hash]- v5 + 32 * v5;
  v7 = [(AAPSyncAnchor *)self->_stopAnchor hash]+ 32 * v6 - v6;
  v8 = [(NSSet *)self->_apps hash]+ 32 * v7 - v7;
  return [(NSArray *)self->_deletes hash]+ 32 * v8 - v8 + 0x6CE5F3FACFLL;
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  if (self == a3)
  {
    LOBYTE(self) = self != 0;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_3;
    }

    LODWORD(self) = -[NSString isEqualToString:](v3->_validity, "isEqualToString:", [a3 validity]);
    if (!self)
    {
      return self;
    }

    version = v3->_version;
    if (version == [a3 version])
    {
      LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](v3->_keyAnchor, "isEqualToAnchor:", [a3 keyAnchor]);
      if (self)
      {
        LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](v3->_startAnchor, "isEqualToAnchor:", [a3 startAnchor]);
        if (self)
        {
          LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](v3->_stopAnchor, "isEqualToAnchor:", [a3 stopAnchor]);
          if (self)
          {
            LODWORD(self) = -[NSSet isEqualToSet:](v3->_apps, "isEqualToSet:", [a3 apps]);
            if (self)
            {
              deletes = v3->_deletes;
              v8 = [a3 deletes];

              LOBYTE(self) = [(NSArray *)deletes isEqualToArray:v8];
            }
          }
        }
      }
    }

    else
    {
LABEL_3:
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = *&self->_validity;
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@:%p validity='%@' version=%li anchors=(%@, %@]-%@> -> apps=%@ deletes=%@"), v3, self, self->_validity, self->_version, self->_startAnchor, self->_stopAnchor, self->_keyAnchor, self->_apps, self->_deletes;
}

@end