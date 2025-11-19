@interface CMHistoricalFetchToken
+ (id)cardioToken;
+ (id)mobilityToken;
- (BOOL)isEqual:(id)a3;
- (CMHistoricalFetchToken)initWithCoder:(id)a3;
- (CMHistoricalFetchToken)initWithType:(unint64_t)a3 cursorList:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMHistoricalFetchToken

- (CMHistoricalFetchToken)initWithType:(unint64_t)a3 cursorList:(id)a4
{
  v10.receiver = self;
  v10.super_class = CMHistoricalFetchToken;
  v8 = [(CMHistoricalFetchToken *)&v10 init];
  if (v8)
  {
    v8->_tables = objc_msgSend_mutableCopy(a4, v6, v7);
    v8->_version = 2;
    v8->_startTime = 0.0;
    v8->_endTime = 0.0;
    v8->_fetchType = a3;
  }

  return v8;
}

+ (id)cardioToken
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 8);
  v4 = [CMTableCursor alloc];
  v6 = objc_msgSend_initWithDatatype_(v4, v5, 0);
  objc_msgSend_addObject_(v3, v7, v6);
  v8 = [CMTableCursor alloc];
  v10 = objc_msgSend_initWithDatatype_(v8, v9, 1);
  objc_msgSend_addObject_(v3, v11, v10);
  v12 = [CMTableCursor alloc];
  v14 = objc_msgSend_initWithDatatype_(v12, v13, 2);
  objc_msgSend_addObject_(v3, v15, v14);
  v16 = [CMTableCursor alloc];
  v18 = objc_msgSend_initWithDatatype_(v16, v17, 3);
  objc_msgSend_addObject_(v3, v19, v18);
  v20 = [CMTableCursor alloc];
  v22 = objc_msgSend_initWithDatatype_(v20, v21, 4);
  objc_msgSend_addObject_(v3, v23, v22);
  v24 = [CMTableCursor alloc];
  v26 = objc_msgSend_initWithDatatype_(v24, v25, 6);
  objc_msgSend_addObject_(v3, v27, v26);
  v28 = [CMTableCursor alloc];
  v30 = objc_msgSend_initWithDatatype_(v28, v29, 5);
  objc_msgSend_addObject_(v3, v31, v30);
  v32 = [CMTableCursor alloc];
  v34 = objc_msgSend_initWithDatatype_(v32, v33, 7);
  objc_msgSend_addObject_(v3, v35, v34);
  if (objc_msgSend_count(v3, v36, v37) != 8)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E296C0);
    }

    v38 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v50 = 8;
      v51 = 2048;
      v52 = objc_msgSend_count(v3, v39, v40);
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Expected %d cardio tables but initialized %lu", buf, 0x12u);
    }

    v41 = sub_19B420058();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E296C0);
      }

      objc_msgSend_count(v3, v42, v43);
      v44 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMHistoricalFetchToken cardioToken]", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }

  v45 = [a1 alloc];
  result = objc_msgSend_initWithType_cursorList_(v45, v46, 0, v3);
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)mobilityToken
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 5);
  v4 = [CMTableCursor alloc];
  v6 = objc_msgSend_initWithDatatype_(v4, v5, 0);
  objc_msgSend_addObject_(v3, v7, v6);
  v8 = [CMTableCursor alloc];
  v10 = objc_msgSend_initWithDatatype_(v8, v9, 3);
  objc_msgSend_addObject_(v3, v11, v10);
  v12 = [CMTableCursor alloc];
  v14 = objc_msgSend_initWithDatatype_(v12, v13, 1);
  objc_msgSend_addObject_(v3, v15, v14);
  v16 = [CMTableCursor alloc];
  v18 = objc_msgSend_initWithDatatype_(v16, v17, 4);
  objc_msgSend_addObject_(v3, v19, v18);
  v20 = [CMTableCursor alloc];
  v22 = objc_msgSend_initWithDatatype_(v20, v21, 2);
  objc_msgSend_addObject_(v3, v23, v22);
  if (objc_msgSend_count(v3, v24, v25) != 5)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E296C0);
    }

    v26 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v38 = 5;
      v39 = 2048;
      v40 = objc_msgSend_count(v3, v27, v28);
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Expected %d mobility tables but initialized %lu", buf, 0x12u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E296C0);
      }

      objc_msgSend_count(v3, v30, v31);
      v32 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMHistoricalFetchToken mobilityToken]", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  v33 = [a1 alloc];
  result = objc_msgSend_initWithType_cursorList_(v33, v34, 1, v3);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_tables = 0;
  v3.receiver = self;
  v3.super_class = CMHistoricalFetchToken;
  [(CMHistoricalFetchToken *)&v3 dealloc];
}

- (CMHistoricalFetchToken)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CMHistoricalFetchToken;
  v4 = [(CMHistoricalFetchToken *)&v18 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v4->_tables = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v10, v9, @"kCMHistoricalFetchTokenCodingKeyTables");
    v4->_version = objc_msgSend_decodeIntegerForKey_(a3, v11, @"kCMHistoricalFetchTokenCodingKeyVersion");
    v4->_fetchType = objc_msgSend_decodeIntegerForKey_(a3, v12, @"kCMHistoricalFetchTokenCodingKeyFetchType");
    objc_msgSend_decodeDoubleForKey_(a3, v13, @"kCMHistoricalFetchTokenCodingKeyStartTime");
    v4->_startTime = v14;
    objc_msgSend_decodeDoubleForKey_(a3, v15, @"kCMHistoricalFetchTokenCodingKeyEndTime");
    v4->_endTime = v16;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_tables, @"kCMHistoricalFetchTokenCodingKeyTables");
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_version, @"kCMHistoricalFetchTokenCodingKeyVersion");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_fetchType, @"kCMHistoricalFetchTokenCodingKeyFetchType");
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMHistoricalFetchTokenCodingKeyStartTime", self->_startTime);
  endTime = self->_endTime;

  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMHistoricalFetchTokenCodingKeyEndTime", endTime);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v9 = objc_msgSend_initWithType_cursorList_(v7, v8, self->_fetchType, self->_tables);
  objc_msgSend_setStartTime_(v9, v10, v11, self->_startTime);
  objc_msgSend_setEndTime_(v9, v12, v13, self->_endTime);
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = objc_msgSend_tables(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v13 = objc_msgSend_tables(a3, v11, v12);
  if (v10 != objc_msgSend_count(v13, v14, v15))
  {
    goto LABEL_11;
  }

  v18 = objc_msgSend_version(self, v16, v17);
  if (v18 != objc_msgSend_version(a3, v19, v20))
  {
    goto LABEL_11;
  }

  Type = objc_msgSend_fetchType(self, v21, v22);
  if (Type == objc_msgSend_fetchType(a3, v24, v25) && (objc_msgSend_startTime(self, v26, v27), v29 = v28, objc_msgSend_startTime(a3, v30, v31), v29 == v34) && (objc_msgSend_endTime(self, v32, v33), v36 = v35, objc_msgSend_endTime(a3, v37, v38), v36 == v41))
  {
    v42 = objc_msgSend_tables(self, v39, v40);
    if (objc_msgSend_count(v42, v43, v44))
    {
      v47 = 0;
      v48 = 1;
      do
      {
        v49 = objc_msgSend_tables(self, v45, v46);
        v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, v47);
        v54 = objc_msgSend_tables(a3, v52, v53);
        v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v47);
        v48 &= objc_msgSend_isEqual_(v51, v57, v56);
        ++v47;
        v60 = objc_msgSend_tables(self, v58, v59);
      }

      while (objc_msgSend_count(v60, v61, v62) > v47);
    }

    else
    {
      LOBYTE(v48) = 1;
    }
  }

  else
  {
LABEL_11:
    LOBYTE(v48) = 0;
  }

  return v48;
}

- (unint64_t)hash
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_version(self, a2, v2);
  v7 = (31 * (objc_msgSend_fetchType(self, v5, v6) - v4 + 32 * v4) + 29791);
  objc_msgSend_startTime(self, v8, v9);
  v11 = (31 * (v10 + v7));
  objc_msgSend_endTime(self, v12, v13);
  v15 = (v14 + v11);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = objc_msgSend_tables(self, v16, v17, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v28, v32, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v15 = objc_msgSend_hash(*(*(&v28 + 1) + 8 * v25++), v21, v22) - v15 + 32 * v15;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v28, v32, 16);
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_version(self, v6, v7);
  Type = objc_msgSend_fetchType(self, v9, v10);
  objc_msgSend_startTime(self, v12, v13);
  v15 = v14;
  objc_msgSend_endTime(self, v16, v17);
  v19 = v18;
  v22 = objc_msgSend_tables(self, v20, v21);
  return objc_msgSend_stringWithFormat_(v3, v23, @"%@, <version, %lu, fetchType, %lu, startTime, %f, endTime, %f, tables, %@>", v5, v8, Type, v15, v19, v22);
}

@end