@interface IPv4AddressFormatter
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
@end

@implementation IPv4AddressFormatter

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v67.receiver = self;
  v67.super_class = IPv4AddressFormatter;
  v8 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v8)
  {
    if (!objc_msgSend_length(a3, v9, v10))
    {
      goto LABEL_12;
    }

    v12 = objc_msgSend_componentsSeparatedByString_(a3, v11, @".");
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 > 4)
    {
      if (a4)
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = objc_msgSend_objectAtIndex_(v12, v16, 0);
        v20 = objc_msgSend_objectAtIndex_(v12, v19, 1);
        v22 = objc_msgSend_objectAtIndex_(v12, v21, 2);
        v24 = objc_msgSend_objectAtIndex_(v12, v23, 3);
        *a4 = objc_msgSend_stringWithFormat_(v17, v25, @"%@.%@.%@.%@", v18, v20, v22, v24);
      }

      if (a5)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

    v26 = v15;
    if (!v15)
    {
LABEL_12:
      LOBYTE(v8) = 1;
      return v8;
    }

    v27 = 0;
    while (1)
    {
      v28 = objc_msgSend_objectAtIndex_(v12, v16, v27);
      if (objc_msgSend_integerValue(v28, v29, v30) >= 256)
      {
        break;
      }

      if (v26 == ++v27)
      {
        goto LABEL_12;
      }
    }

    if (!a4)
    {
LABEL_45:
      if (a5)
      {
LABEL_7:
        LOBYTE(v8) = 0;
        *a5 = @"gErE";
        return v8;
      }

LABEL_46:
      LOBYTE(v8) = 0;
      return v8;
    }

    if (objc_msgSend_UTF8ByteCount(v28, v16, v31) >= 4)
    {
      v28 = objc_msgSend_substringToIndex_(v28, v32, 3);
    }

    if (objc_msgSend_integerValue(v28, v32, v33) >= 256)
    {
      v28 = objc_msgSend_substringToIndex_(v28, v34, 2);
    }

    if (v26 == 4)
    {
      v35 = MEMORY[0x277CCACA8];
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v43 = objc_msgSend_objectAtIndex_(v12, v34, 0);
          v45 = objc_msgSend_objectAtIndex_(v12, v44, 1);
          v64 = v28;
          v66 = objc_msgSend_objectAtIndex_(v12, v46, 3);
        }

        else
        {
          v43 = objc_msgSend_objectAtIndex_(v12, v34, 0);
          v45 = objc_msgSend_objectAtIndex_(v12, v51, 1);
          v64 = objc_msgSend_objectAtIndex_(v12, v52, 2);
          v66 = v28;
        }

        v61 = v45;
      }

      else
      {
        if (!v27)
        {
          v36 = objc_msgSend_objectAtIndex_(v12, v34, 1);
          v64 = objc_msgSend_objectAtIndex_(v12, v37, 2);
          v66 = objc_msgSend_objectAtIndex_(v12, v38, 3);
          v58 = v28;
          v61 = v36;
LABEL_36:
          v53 = objc_msgSend_stringWithFormat_(v35, v39, @"%@.%@.%@.%@", v58, v61, v64, v66);
          goto LABEL_43;
        }

        v43 = objc_msgSend_objectAtIndex_(v12, v34, 0);
        v64 = objc_msgSend_objectAtIndex_(v12, v49, 2);
        v66 = objc_msgSend_objectAtIndex_(v12, v50, 3);
        v61 = v28;
      }

      v58 = v43;
      goto LABEL_36;
    }

    if (v26 < 3)
    {
      if (v26 != 2)
      {
LABEL_44:
        *a4 = v28;
        goto LABEL_45;
      }

      v47 = MEMORY[0x277CCACA8];
      if (v27)
      {
        v60 = objc_msgSend_objectAtIndex_(v12, v34, 0);
        v63 = v28;
      }

      else
      {
        v60 = v28;
        v63 = objc_msgSend_objectAtIndex_(v12, v34, 1);
      }

      v53 = objc_msgSend_stringWithFormat_(v47, v48, @"%@.%@", v60, v63);
LABEL_43:
      v28 = v53;
      goto LABEL_44;
    }

    if (v27 == 2)
    {
      v40 = MEMORY[0x277CCACA8];
      v54 = objc_msgSend_objectAtIndex_(v12, v34, 0);
      v62 = objc_msgSend_objectAtIndex_(v12, v56, 1);
      v65 = v28;
    }

    else
    {
      if (v27 != 1)
      {
        if (v27)
        {
          goto LABEL_45;
        }

        v40 = MEMORY[0x277CCACA8];
        v62 = objc_msgSend_objectAtIndex_(v12, v34, 1);
        v65 = objc_msgSend_objectAtIndex_(v12, v41, 2);
        v59 = v28;
        goto LABEL_40;
      }

      v40 = MEMORY[0x277CCACA8];
      v54 = objc_msgSend_objectAtIndex_(v12, v34, 0);
      v62 = v28;
      v65 = objc_msgSend_objectAtIndex_(v12, v55, 2);
    }

    v59 = v54;
LABEL_40:
    v53 = objc_msgSend_stringWithFormat_(v40, v42, @"%@.%@.%@", v59, v62, v65);
    goto LABEL_43;
  }

  return v8;
}

@end