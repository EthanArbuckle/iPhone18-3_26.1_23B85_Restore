@interface CKDPDistributedTimestamps
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSiteIdentifiers:(id)a3;
- (void)addSiteVersionVectors:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPDistributedTimestamps

- (void)addSiteIdentifiers:(id)a3
{
  v4 = a3;
  siteIdentifiers = self->_siteIdentifiers;
  v8 = v4;
  if (!siteIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_siteIdentifiers;
    self->_siteIdentifiers = v6;

    v4 = v8;
    siteIdentifiers = self->_siteIdentifiers;
  }

  objc_msgSend_addObject_(siteIdentifiers, v4, v4);
}

- (void)addSiteVersionVectors:(id)a3
{
  v4 = a3;
  siteVersionVectors = self->_siteVersionVectors;
  v8 = v4;
  if (!siteVersionVectors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_siteVersionVectors;
    self->_siteVersionVectors = v6;

    v4 = v8;
    siteVersionVectors = self->_siteVersionVectors;
  }

  objc_msgSend_addObject_(siteVersionVectors, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPDistributedTimestamps;
  v4 = [(CKDPDistributedTimestamps *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  if (objc_msgSend_count(self->_siteIdentifiers, v5, v6))
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = objc_msgSend_count(self->_siteIdentifiers, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = self->_siteIdentifiers;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v49, v54, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v49 + 1) + 8 * i), v18, v19);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v49, v54, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v4, v25, v14, @"siteIdentifiers");
  }

  if (objc_msgSend_count(self->_siteVersionVectors, v7, v8))
  {
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v29 = objc_msgSend_count(self->_siteVersionVectors, v27, v28);
    v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = self->_siteVersionVectors;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v45, v53, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v46;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = objc_msgSend_dictionaryRepresentation(*(*(&v45 + 1) + 8 * j), v35, v36, v45);
          objc_msgSend_addObject_(v31, v41, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v45, v53, 16);
      }

      while (v37);
    }

    objc_msgSend_setObject_forKey_(v4, v42, v31, @"siteVersionVectors");
  }

  v43 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_siteIdentifiers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v31, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v26, v31, 16);
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_siteVersionVectors;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v30, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v22, v30, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v25 = a3;
  if (objc_msgSend_siteIdentifiersCount(self, v4, v5))
  {
    objc_msgSend_clearSiteIdentifiers(v25, v6, v7);
    v10 = objc_msgSend_siteIdentifiersCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_siteIdentifiersAtIndex_(self, v6, i);
        objc_msgSend_addSiteIdentifiers_(v25, v14, v13);
      }
    }
  }

  if (objc_msgSend_siteVersionVectorsCount(self, v6, v7))
  {
    objc_msgSend_clearSiteVersionVectors(v25, v15, v16);
    v19 = objc_msgSend_siteVersionVectorsCount(self, v17, v18);
    if (v19)
    {
      v21 = v19;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_siteVersionVectorsAtIndex_(self, v20, j);
        objc_msgSend_addSiteVersionVectors_(v25, v24, v23);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_siteIdentifiers;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v40, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v35 + 1) + 8 * v17), v14, a3);
        objc_msgSend_addSiteIdentifiers_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v35, v40, 16);
    }

    while (v15);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_siteVersionVectors;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v39, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v31 + 1) + 8 * v26), v23, a3, v31);
        objc_msgSend_addSiteVersionVectors_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v31, v39, 16);
    }

    while (v24);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((siteIdentifiers = self->_siteIdentifiers, v9 = v4[1], !(siteIdentifiers | v9)) || objc_msgSend_isEqual_(siteIdentifiers, v7, v9)))
  {
    siteVersionVectors = self->_siteVersionVectors;
    v11 = v4[2];
    if (siteVersionVectors | v11)
    {
      isEqual = objc_msgSend_isEqual_(siteVersionVectors, v7, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4[1];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v29, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addSiteIdentifiers_(self, v8, *(*(&v24 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v24, v29, 16);
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v4[2];
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v28, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addSiteVersionVectors_(self, v15, *(*(&v20 + 1) + 8 * v18++), v20);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v20, v28, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end