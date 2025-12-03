@interface CKContainerID
- (BOOL)isEqual:(id)equal;
- (CKContainerID)initWithCoder:(id)coder;
- (CKContainerID)initWithContainerIdentifier:(id)identifier environment:(int64_t)environment;
- (CKContainerID)initWithSqliteRepresentation:(id)representation;
- (id)equivalencyProperties;
- (id)representativeDataclass;
- (id)sqliteRepresentation;
- (int64_t)c2ContainerType;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKContainerID

- (unint64_t)hash
{
  v4 = objc_msgSend_containerIdentifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = v7 ^ (2 * objc_msgSend_environment(self, v8, v9));

  return v10;
}

- (id)sqliteRepresentation
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_containerIdentifier(self, a2, v2);
  v8 = objc_msgSend_environment(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%@~%ld", v5, v8);

  return v10;
}

- (id)representativeDataclass
{
  v3 = objc_msgSend_specialContainerType(self, a2, v2) - 1;
  if (v3 <= 0x24 && ((0x125F7F20DBuLL >> v3) & 1) != 0)
  {
    v4 = **(&unk_1E70C1AC0 + v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)c2ContainerType
{
  v6 = objc_msgSend_specialContainerType(self, a2, v2) - 2;
  if (v6 < 0x11 && ((0x1706Du >> v6) & 1) != 0)
  {
    return qword_1886FE988[v6];
  }

  if (objc_msgSend_isAppleInternal(self, v4, v5))
  {
    return 2;
  }

  return 1;
}

- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index
{
  statementCopy = statement;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(statementCopy, v9, v10, index);
}

- (CKContainerID)initWithContainerIdentifier:(id)identifier environment:(int64_t)environment
{
  v134 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v108 = 0;
  v7 = _CKCheckArgument("containerIdentifier", identifierCopy, 0, 0, 0, &v108);
  v8 = v108;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    v84 = [CKException alloc];
    v87 = objc_msgSend_code(v9, v85, v86);
    v90 = objc_msgSend_localizedDescription(v9, v88, v89);
    v92 = objc_msgSend_initWithCode_format_(v84, v91, v87, @"%@", v90);
    v93 = v92;

    goto LABEL_63;
  }

  if ((environment - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v94 = [CKException alloc];
    v96 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v95, @"CKErrorDomain", 12, @"environment can not be 0");
    v99 = objc_msgSend_code(v96, v97, v98);
    v101 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v100, @"CKErrorDomain", 12, @"environment can not be 0");
    v104 = objc_msgSend_localizedDescription(v101, v102, v103);
    v92 = objc_msgSend_initWithCode_format_(v94, v105, v99, @"%@", v104);
    v106 = v92;

LABEL_63:
    objc_exception_throw(v92);
  }

  v107.receiver = self;
  v107.super_class = CKContainerID;
  v12 = [(CKContainerID *)&v107 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(identifierCopy, v10, v11);
    containerIdentifier = v12->_containerIdentifier;
    v12->_containerIdentifier = v13;

    v12->_environment = environment;
    if (qword_1ED4B60B8 != -1)
    {
      dispatch_once(&qword_1ED4B60B8, &unk_1EFA306B0);
    }

    v17 = qword_1ED4B6088;
    v18 = objc_msgSend_containerIdentifier(v12, v15, v16);
    v20 = objc_msgSend_objectForKeyedSubscript_(v17, v19, v18);

    if (v20)
    {
LABEL_7:
      v23 = objc_msgSend_integerValue(v20, v21, v22);
      objc_msgSend_setSpecialContainerType_(v12, v24, v23);
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v60 = qword_1ED4B6090;
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v125, v133, 16);
      if (v62)
      {
        v65 = v62;
        v66 = *v126;
LABEL_42:
        v67 = 0;
        while (1)
        {
          if (*v126 != v66)
          {
            objc_enumerationMutation(v60);
          }

          v68 = *(*(&v125 + 1) + 8 * v67);
          v69 = objc_msgSend_containerIdentifier(v12, v63, v64);
          hasPrefix = objc_msgSend_hasPrefix_(v69, v70, v68);

          if (hasPrefix)
          {
            break;
          }

          if (v65 == ++v67)
          {
            v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v125, v133, 16);
            if (v65)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }
        }

        v20 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B6090, v63, v68);

        if (v20)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_48:
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v72 = qword_1ED4B6098;
      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v121, v132, 16);
      if (v74)
      {
        v77 = v74;
        v78 = *v122;
LABEL_52:
        v79 = 0;
        while (1)
        {
          if (*v122 != v78)
          {
            objc_enumerationMutation(v72);
          }

          v80 = *(*(&v121 + 1) + 8 * v79);
          v81 = objc_msgSend_containerIdentifier(v12, v75, v76);
          hasSuffix = objc_msgSend_hasSuffix_(v81, v82, v80);

          if (hasSuffix)
          {
            break;
          }

          if (v77 == ++v79)
          {
            v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v121, v132, 16);
            if (v77)
            {
              goto LABEL_52;
            }

            goto LABEL_58;
          }
        }

        v20 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B6098, v75, v80);

        if (v20)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_58:
      }

      objc_msgSend_setSpecialContainerType_(v12, v21, 0);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v25 = qword_1ED4B60A0;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v117, v131, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v118;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v118 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v117 + 1) + 8 * i);
          v34 = objc_msgSend_containerIdentifier(v12, v28, v29);
          LODWORD(v33) = objc_msgSend_isEqualToString_(v34, v35, v33);

          if (v33)
          {
            objc_msgSend_setIsTestContainer_(v12, v28, 1);
            goto LABEL_18;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v117, v131, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v116 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    v36 = qword_1ED4B60A8;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v113, v130, 16);
    if (v38)
    {
      v41 = v38;
      v42 = *v114;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v114 != v42)
          {
            objc_enumerationMutation(v36);
          }

          v44 = *(*(&v113 + 1) + 8 * j);
          v45 = objc_msgSend_containerIdentifier(v12, v39, v40);
          LODWORD(v44) = objc_msgSend_hasPrefix_(v45, v46, v44);

          if (v44)
          {
            objc_msgSend_setIsTestContainer_(v12, v39, 1);
            goto LABEL_28;
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v113, v130, 16);
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v47 = qword_1ED4B60B0;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v109, v129, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v110;
      while (2)
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v110 != v53)
          {
            objc_enumerationMutation(v47);
          }

          v55 = *(*(&v109 + 1) + 8 * k);
          v56 = objc_msgSend_containerIdentifier(v12, v50, v51);
          LODWORD(v55) = objc_msgSend_hasPrefix_(v56, v57, v55);

          if (v55)
          {
            objc_msgSend_setIsAppleInternal_(v12, v50, 1);
            goto LABEL_38;
          }
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v109, v129, 16);
        if (v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_38:
  }

  v58 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CKContainerID)initWithSqliteRepresentation:(id)representation
{
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(representationCopy, v7, @"~");
    if (objc_msgSend_count(v8, v9, v10) == 2)
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, 0);
      v14 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, 1);
      v17 = objc_msgSend_integerValue(v14, v15, v16);

      self = objc_msgSend_initWithContainerIdentifier_environment_(self, v18, v12, v17);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_sqliteRepresentation(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"sqliteRepresentation");

  v10 = objc_msgSend_properties(v3, v8, v9);

  return v10;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_containerIdentifier(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"containerIdentifier", v6, 0);

  v10 = objc_msgSend_environment(self, v8, v9);
  v12 = @"UNKNOWN ENVIRONMENT";
  if (v10 == 2)
  {
    v12 = @"Sandbox";
  }

  if (v10 == 1)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"environment", @"Production", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"environment", v12, 0);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_containerIdentifier(self, v6, v7);
      v11 = objc_msgSend_containerIdentifier(v5, v9, v10);
      v14 = v11;
      if (v8 == v11)
      {
      }

      else
      {
        v15 = objc_msgSend_containerIdentifier(self, v12, v13);
        v18 = objc_msgSend_containerIdentifier(v5, v16, v17);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v19, v18);

        if (!isEqualToString)
        {
          v23 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v24 = objc_msgSend_environment(self, v21, v22);
      v23 = v24 == objc_msgSend_environment(v5, v25, v26);
      goto LABEL_10;
    }

    v23 = 0;
  }

LABEL_11:

  return v23;
}

- (CKContainerID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"ContainerIdentifier");
  v10 = objc_msgSend_decodeInt64ForKey_(coderCopy, v9, @"Environment");
  objc_autoreleasePoolPop(v5);
  v12 = objc_msgSend_initWithContainerIdentifier_environment_(self, v11, v8, v10);

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerIdentifier(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ContainerIdentifier");

  v11 = objc_msgSend_environment(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"Environment");
  objc_autoreleasePoolPop(v4);
}

@end