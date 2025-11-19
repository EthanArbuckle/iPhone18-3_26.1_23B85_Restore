@interface _WKWebExtensionWebNavigationURLPredicate
- (BOOL)matchesURL:(id)a3;
- (_WKWebExtensionWebNavigationURLPredicate)initWithTypeString:(id)a3 value:(id)a4 outErrorMessage:(id *)a5;
@end

@implementation _WKWebExtensionWebNavigationURLPredicate

- (_WKWebExtensionWebNavigationURLPredicate)initWithTypeString:(id)a3 value:(id)a4 outErrorMessage:(id *)a5
{
  v105[20] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v101.receiver = self;
  v101.super_class = _WKWebExtensionWebNavigationURLPredicate;
  v10 = [(_WKWebExtensionWebNavigationURLPredicate *)&v101 init];
  if (!v10)
  {
    v16 = 0;
    goto LABEL_10;
  }

  if (_MergedGlobals_40 == 1)
  {
    v11 = qword_1ED6417C0;
  }

  else
  {
    v104[0] = @"hostContains";
    v104[1] = @"hostEquals";
    v105[0] = &unk_1F11844B8;
    v105[1] = &unk_1F11844D0;
    v104[2] = @"hostPrefix";
    v104[3] = @"hostSuffix";
    v105[2] = &unk_1F11844E8;
    v105[3] = &unk_1F1184500;
    v104[4] = @"pathContains";
    v104[5] = @"pathEquals";
    v105[4] = &unk_1F1184518;
    v105[5] = &unk_1F1184530;
    v104[6] = @"pathPrefix";
    v104[7] = @"pathSuffix";
    v105[6] = &unk_1F1184548;
    v105[7] = &unk_1F1184560;
    v104[8] = @"queryContains";
    v104[9] = @"queryEquals";
    v105[8] = &unk_1F1184578;
    v105[9] = &unk_1F1184590;
    v104[10] = @"queryPrefix";
    v104[11] = @"querySuffix";
    v105[10] = &unk_1F11845A8;
    v105[11] = &unk_1F11845C0;
    v104[12] = @"urlContains";
    v104[13] = @"urlEquals";
    v105[12] = &unk_1F11845D8;
    v105[13] = &unk_1F11845F0;
    v104[14] = @"urlMatches";
    v104[15] = @"originAndPathMatches";
    v105[14] = &unk_1F1184608;
    v105[15] = &unk_1F1184620;
    v104[16] = @"urlPrefix";
    v104[17] = @"urlSuffix";
    v105[16] = &unk_1F1184638;
    v105[17] = &unk_1F1184650;
    v104[18] = @"schemes";
    v104[19] = @"ports";
    v105[18] = &unk_1F1184668;
    v105[19] = &unk_1F1184680;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:20];
    qword_1ED6417C0 = v11;
    _MergedGlobals_40 = 1;
  }

  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [v12 integerValue];
  v10->_type = v13;
  if (v13 < 0xE)
  {
    goto LABEL_5;
  }

  if (v13 <= 15)
  {
    if ((v13 - 14) >= 2)
    {
      goto LABEL_7;
    }

    v37 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v9 options:0 error:0];
    value = v10->_value;
    v10->_value = v37;

    if (v37)
    {
      goto LABEL_7;
    }

    MEMORY[0x19EB02040](&v98, @"originAndPathMatches");
    MEMORY[0x19EB02040](&v97, @"'%@' is not a valid regular expression");
    WebKit::toErrorString(MEMORY[0x1E696EBA0], &v98, &v99, v9);
    v39 = v99;
    if (v99)
    {
      atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v100, v39);
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v40);
      }
    }

    else
    {
      v100 = &stru_1F1147748;
    }

    v43 = v100;
    v100 = 0;
    *a5 = v43;
    v44 = v100;
    v100 = 0;

    v46 = v99;
    v99 = 0;
    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v45);
    }

    v47 = v97;
    v97 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v45);
    }

    v48 = v98;
    v98 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v45);
    }

    goto LABEL_71;
  }

  if ((v13 - 16) >= 2 && v13 != 18)
  {
    if (v13 != 19)
    {
      goto LABEL_7;
    }

    v87 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if ((byte_1ED6417B9 & 1) == 0)
    {
      v79 = MEMORY[0x1E695DFB8];
      v80 = objc_opt_class();
      v103 = objc_opt_class();
      v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
      qword_1ED6417C8 = [v79 orderedSetWithObjects:{v80, v81, 0}];

      byte_1ED6417B9 = 1;
    }

    v18 = WTF::dynamic_objc_cast<NSArray>(v9);
    v86 = [v18 count];

    if (!v86)
    {
LABEL_37:
      v35 = [v87 copy];
      v36 = v10->_value;
      v10->_value = v35;

      v15 = v87;
      goto LABEL_6;
    }

    v19 = 0;
    v83 = v12;
    while (1)
    {
      v20 = [v9 objectAtIndexedSubscript:v19];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@[%lu]"];
      v22 = WebKit::validateObject(v20, v21, qword_1ED6417C8, a5);

      if (!v22)
      {
        break;
      }

      v23 = WTF::dynamic_objc_cast<NSNumber>(v20);
      v24 = v23;
      if (v23)
      {
        v25 = [v23 integerValue];
        if (v25 >= 0x10000)
        {
          MEMORY[0x19EB02040](&v98, @"ports");
          MEMORY[0x19EB02040](&v96, @"'%zd' is not a valid port");
          WebKit::toErrorString(MEMORY[0x1E696EBA0], &v98, &v99, v25);
          v55 = v99;
          if (v99)
          {
            atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v100, v55);
            if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v56);
            }
          }

          else
          {
            v100 = &stru_1F1147748;
          }

          v59 = v100;
          v100 = 0;
          *a5 = v59;
          v60 = v100;
          v100 = 0;

          v62 = v99;
          v99 = 0;
          if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v62, v61);
          }

          v63 = v96;
          v96 = 0;
          if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v63, v61);
          }

          v64 = v98;
          v98 = 0;
          if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v64, v61);
          }

LABEL_69:

          break;
        }

        [v87 addIndex:v25];
      }

      else
      {
        v26 = WTF::dynamic_objc_cast<NSArray>(v20);
        v27 = v26;
        if (v26)
        {
          v84 = v20;
          v85 = v26;
          if ([v26 count] != 2)
          {
            MEMORY[0x19EB02040](&v98, @"ports");
            MEMORY[0x19EB02040](&v95, @"a port range must specify 2 numbers");
            WebKit::toErrorString(MEMORY[0x1E696EBA0], &v98, &v99, @"ports");
            v57 = v99;
            if (v99)
            {
              atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v100, v57);
              if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v58);
              }
            }

            else
            {
              v100 = &stru_1F1147748;
            }

            v67 = v100;
            v100 = 0;
            *a5 = v67;
            v68 = v100;
            v100 = 0;

            v70 = v99;
            v99 = 0;
            if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v70, v69);
            }

            v71 = v95;
            v95 = 0;
            if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v71, v69);
            }

            v72 = v98;
            v98 = 0;
            if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v72, v69);
            }

            v24 = v85;
            goto LABEL_69;
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          obj = v85;
          v28 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
          if (v28)
          {
            v29 = *v92;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v92 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = [*(*(&v91 + 1) + 8 * i) integerValue];
                if (v31 >= 0x10000)
                {
                  MEMORY[0x19EB02040](&v98, @"ports");
                  v12 = v83;
                  v20 = v84;
                  MEMORY[0x19EB02040](&v90, @"'%zd' is not a valid port");
                  WebKit::toErrorString(MEMORY[0x1E696EBA0], &v98, &v99, v31);
                  v41 = v99;
                  if (v99)
                  {
                    atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
                    MEMORY[0x19EB00B70](&v100, v41);
                    if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v41, v42);
                    }
                  }

                  else
                  {
                    v100 = &stru_1F1147748;
                  }

                  v49 = v100;
                  v100 = 0;
                  *a5 = v49;
                  v50 = v100;
                  v100 = 0;

                  v52 = v99;
                  v99 = 0;
                  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v52, v51);
                  }

                  v53 = v90;
                  v90 = 0;
                  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v53, v51);
                  }

                  v54 = v98;
                  v98 = 0;
                  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v54, v51);
                  }

                  goto LABEL_68;
                }
              }

              v28 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v12 = v83;
          v20 = v84;
          v32 = [obj objectAtIndexedSubscript:0];
          v82 = [v32 unsignedIntegerValue];

          v33 = [obj objectAtIndexedSubscript:1];
          v34 = [v33 unsignedIntegerValue];

          if (v34 <= v82)
          {
            MEMORY[0x19EB02040](&v98, @"ports");
            MEMORY[0x19EB02040](&v89, @"'%zd-%zd' is not a valid port range");
            WebKit::toErrorString(MEMORY[0x1E696EBA0], &v98, &v99, v82);
            v65 = v99;
            if (v99)
            {
              atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v100, v65);
              if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v65, v66);
              }
            }

            else
            {
              v100 = &stru_1F1147748;
            }

            v73 = v100;
            v100 = 0;
            *a5 = v73;
            v74 = v100;
            v100 = 0;

            v76 = v99;
            v99 = 0;
            if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v76, v75);
            }

            v77 = v89;
            v89 = 0;
            if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v77, v75);
            }

            v78 = v98;
            v98 = 0;
            if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v78, v75);
            }

LABEL_68:
            v24 = obj;
            goto LABEL_69;
          }

          v27 = v85;
          [v87 addIndexesInRange:?];
        }
      }

      if (++v19 == v86)
      {
        goto LABEL_37;
      }
    }

LABEL_71:
    v16 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v14 = [v9 copy];
  v15 = v10->_value;
  v10->_value = v14;
LABEL_6:

LABEL_7:
  v16 = v10;
LABEL_8:

LABEL_10:
  return v16;
}

- (BOOL)matchesURL:(id)a3
{
  v4 = a3;
  v5 = self->_value;
  v6 = self->_value;
  v7 = self->_value;
  v8 = self->_value;
  switch(self->_type)
  {
    case 0:
      v9 = [v4 host];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &stru_1F1147748;
      }

      v12 = [@"." stringByAppendingString:v11];
      v13 = [v12 containsString:v5];
      goto LABEL_21;
    case 1:
      v10 = [v4 host];
      v16 = [v10 isEqualToString:v5];
      goto LABEL_28;
    case 2:
      v10 = [v4 host];
      v16 = [v10 hasPrefix:v5];
      goto LABEL_28;
    case 3:
      v10 = [v4 host];
      v16 = [v10 hasSuffix:v5];
      goto LABEL_28;
    case 4:
      v10 = [v4 path];
      v16 = [v10 containsString:v5];
      goto LABEL_28;
    case 5:
      v10 = [v4 path];
      v16 = [v10 isEqualToString:v5];
      goto LABEL_28;
    case 6:
      v10 = [v4 path];
      v16 = [v10 hasPrefix:v5];
      goto LABEL_28;
    case 7:
      v10 = [v4 path];
      v16 = [v10 hasSuffix:v5];
      goto LABEL_28;
    case 8:
      v10 = [v4 query];
      v16 = [v10 containsString:v5];
      goto LABEL_28;
    case 9:
      v10 = [v4 query];
      v16 = [v10 isEqualToString:v5];
      goto LABEL_28;
    case 0xALL:
      v10 = [v4 query];
      v16 = [v10 hasPrefix:v5];
      goto LABEL_28;
    case 0xBLL:
      v10 = [v4 query];
      v16 = [v10 hasSuffix:v5];
      goto LABEL_28;
    case 0xCLL:
      v10 = [v4 _webkit_URLByRemovingFragment];
      v12 = [v10 absoluteString];
      v13 = [v12 containsString:v5];
      goto LABEL_21;
    case 0xDLL:
      v10 = [v4 _webkit_URLByRemovingFragment];
      v12 = [v10 absoluteString];
      v13 = [v12 isEqualToString:v5];
      goto LABEL_21;
    case 0xELL:
      v14 = [v4 _webkit_URLByRemovingFragment];
      v10 = [v14 absoluteString];

      v15 = [v8 rangeOfFirstMatchInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_29;
    case 0xFLL:
      v10 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
      [v10 setFragment:0];
      [v10 setQuery:0];
      v12 = [v10 string];
      v15 = [v8 rangeOfFirstMatchInString:v12 options:0 range:{0, objc_msgSend(v12, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    case 0x10:
      v10 = [v4 _webkit_URLByRemovingFragment];
      v12 = [v10 absoluteString];
      v13 = [v12 hasPrefix:v5];
      goto LABEL_21;
    case 0x11:
      v10 = [v4 _webkit_URLByRemovingFragment];
      v12 = [v10 absoluteString];
      v13 = [v12 hasSuffix:v5];
LABEL_21:
      v15 = v13;
LABEL_22:

      goto LABEL_29;
    case 0x12:
      v10 = [v4 scheme];
      v16 = [v6 containsObject:v10];
      goto LABEL_28;
    case 0x13:
      v10 = [v4 port];
      v16 = [v7 containsIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];
LABEL_28:
      v15 = v16;
LABEL_29:

      break;
    default:
      v15 = 0;
      break;
  }

  return v15;
}

@end