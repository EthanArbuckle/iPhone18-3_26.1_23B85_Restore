@interface WKValidatedAttributedString
@end

@implementation WKValidatedAttributedString

void ___WKValidatedAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    v11 = *MEMORY[0x277D74060];
    v49 = *MEMORY[0x277D740E8];
    v46 = *MEMORY[0x277D74068];
    v47 = *MEMORY[0x277D740C0];
    v45 = *MEMORY[0x277D74158];
    v44 = *MEMORY[0x277D741E8];
    v43 = *MEMORY[0x277D74148];
    v42 = *MEMORY[0x277D740A8];
    v48 = a4;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        if ([v13 isEqualToString:v11])
        {
          v14 = wk_default_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v15 = [*(a1 + 32) string];
          *buf = 136446723;
          v55 = "_WKValidatedAttributedString_block_invoke";
          v56 = 1024;
          v57 = 315;
          v58 = 2113;
          v59 = v15;
          v16 = v14;
          v17 = "%{public}s:%d: Attributed string '%{private}@' contains NSAttachmentAttributeName. Removed";
LABEL_40:
          _os_log_error_impl(&dword_23B338000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x1Cu);

          a4 = v48;
          goto LABEL_11;
        }

        if ([v13 isEqualToString:v49])
        {
          v14 = wk_default_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v15 = [*(a1 + 32) string];
          *buf = 136446723;
          v55 = "_WKValidatedAttributedString_block_invoke";
          v56 = 1024;
          v57 = 318;
          v58 = 2113;
          v59 = v15;
          v16 = v14;
          v17 = "%{public}s:%d: Attributed string '%{private}@' contains NSLinkAttributeName. Removed";
          goto LABEL_40;
        }

        if ([v13 isEqualToString:v47])
        {
          v18 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          a4 = v48;
          if ((isKindOfClass & 1) == 0)
          {
            v14 = wk_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v41 = [*(a1 + 32) string];
              v34 = [v7 objectForKeyedSubscript:v13];
              *buf = 136446979;
              v55 = "_WKValidatedAttributedString_block_invoke";
              v56 = 1024;
              v57 = 321;
              v58 = 2113;
              v59 = v41;
              v60 = 2114;
              v61 = v34;
              v31 = v34;
              v32 = v14;
              v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSForegroundColorAttributeName that isn't a UIColor (%{public}@). Removed";
              goto LABEL_38;
            }

LABEL_11:

            [*(a1 + 40) removeAttribute:v13 range:{a3, a4}];
            goto LABEL_12;
          }
        }

        if ([v13 isEqualToString:v46])
        {
          v20 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          a4 = v48;
          if ((v21 & 1) == 0)
          {
            v14 = wk_default_log();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v41 = [*(a1 + 32) string];
            v35 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v55 = "_WKValidatedAttributedString_block_invoke";
            v56 = 1024;
            v57 = 324;
            v58 = 2113;
            v59 = v41;
            v60 = 2114;
            v61 = v35;
            v31 = v35;
            v32 = v14;
            v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSBackgroundColorAttributeName that isn't a UIColor (%{public}@). Removed";
LABEL_38:
            _os_log_error_impl(&dword_23B338000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x26u);

            a4 = v48;
            goto LABEL_11;
          }
        }

        if ([v13 isEqualToString:v45])
        {
          v22 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          a4 = v48;
          if ((v23 & 1) == 0)
          {
            v14 = wk_default_log();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v41 = [*(a1 + 32) string];
            v36 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v55 = "_WKValidatedAttributedString_block_invoke";
            v56 = 1024;
            v57 = 327;
            v58 = 2113;
            v59 = v41;
            v60 = 2114;
            v61 = v36;
            v31 = v36;
            v32 = v14;
            v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSStrokeColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v44])
        {
          v24 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          a4 = v48;
          if ((v25 & 1) == 0)
          {
            v14 = wk_default_log();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v41 = [*(a1 + 32) string];
            v37 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v55 = "_WKValidatedAttributedString_block_invoke";
            v56 = 1024;
            v57 = 330;
            v58 = 2113;
            v59 = v41;
            v60 = 2114;
            v61 = v37;
            v31 = v37;
            v32 = v14;
            v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSUnderlineColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v43])
        {
          v26 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          a4 = v48;
          if ((v27 & 1) == 0)
          {
            v14 = wk_default_log();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v41 = [*(a1 + 32) string];
            v38 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v55 = "_WKValidatedAttributedString_block_invoke";
            v56 = 1024;
            v57 = 333;
            v58 = 2113;
            v59 = v41;
            v60 = 2114;
            v61 = v38;
            v31 = v38;
            v32 = v14;
            v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSStrikethroughColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v42])
        {
          v28 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v29 = objc_opt_isKindOfClass();

          a4 = v48;
          if ((v29 & 1) == 0)
          {
            v14 = wk_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v41 = [*(a1 + 32) string];
              v30 = [v7 objectForKeyedSubscript:v13];
              *buf = 136446979;
              v55 = "_WKValidatedAttributedString_block_invoke";
              v56 = 1024;
              v57 = 336;
              v58 = 2113;
              v59 = v41;
              v60 = 2114;
              v61 = v30;
              v31 = v30;
              v32 = v14;
              v33 = "%{public}s:%d: Attributed string '%{private}@' contains NSFontAttributeName that isn't a UIFont (%{public}@). Removed";
              goto LABEL_38;
            }

            goto LABEL_11;
          }
        }

LABEL_12:
        ++v12;
      }

      while (v9 != v12);
      v39 = [v7 countByEnumeratingWithState:&v50 objects:v62 count:16];
      v9 = v39;
    }

    while (v39);
  }

  v40 = *MEMORY[0x277D85DE8];
}

@end