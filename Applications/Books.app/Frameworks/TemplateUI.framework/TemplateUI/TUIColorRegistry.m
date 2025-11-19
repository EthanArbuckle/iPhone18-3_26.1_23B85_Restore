@interface TUIColorRegistry
- (TUIColorRegistry)init;
@end

@implementation TUIColorRegistry

- (TUIColorRegistry)init
{
  v75.receiver = self;
  v75.super_class = TUIColorRegistry;
  v2 = [(TUIColorRegistry *)&v75 init];
  if (v2)
  {
    v3 = objc_opt_new();
    colors = v2->_colors;
    v2->_colors = v3;

    v5 = +[UIColor systemRedColor];
    [(NSMutableDictionary *)v2->_colors setObject:v5 forKeyedSubscript:@"system-red"];

    v6 = +[UIColor systemGreenColor];
    [(NSMutableDictionary *)v2->_colors setObject:v6 forKeyedSubscript:@"system-green"];

    v7 = +[UIColor systemBlueColor];
    [(NSMutableDictionary *)v2->_colors setObject:v7 forKeyedSubscript:@"system-blue"];

    v8 = +[UIColor systemOrangeColor];
    [(NSMutableDictionary *)v2->_colors setObject:v8 forKeyedSubscript:@"system-orange"];

    v9 = +[UIColor systemPinkColor];
    [(NSMutableDictionary *)v2->_colors setObject:v9 forKeyedSubscript:@"system-pink"];

    v10 = +[UIColor systemPurpleColor];
    [(NSMutableDictionary *)v2->_colors setObject:v10 forKeyedSubscript:@"system-purple"];

    v11 = +[UIColor systemMintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v11 forKeyedSubscript:@"system-mint"];

    v12 = +[UIColor systemCyanColor];
    [(NSMutableDictionary *)v2->_colors setObject:v12 forKeyedSubscript:@"system-cyan"];

    v13 = +[UIColor systemGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v13 forKeyedSubscript:@"system-gray"];

    v14 = +[UIColor systemBrownColor];
    [(NSMutableDictionary *)v2->_colors setObject:v14 forKeyedSubscript:@"system-brown"];

    v15 = +[UIColor systemTealColor];
    [(NSMutableDictionary *)v2->_colors setObject:v15 forKeyedSubscript:@"system-teal"];

    v16 = +[UIColor systemIndigoColor];
    [(NSMutableDictionary *)v2->_colors setObject:v16 forKeyedSubscript:@"system-indigo"];

    v17 = +[UIColor systemYellowColor];
    [(NSMutableDictionary *)v2->_colors setObject:v17 forKeyedSubscript:@"system-yellow"];

    v18 = +[UIColor systemMidGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v18 forKeyedSubscript:@"system-mid-gray"];

    v19 = +[UIColor systemWhiteColor];
    [(NSMutableDictionary *)v2->_colors setObject:v19 forKeyedSubscript:@"system-white"];

    v20 = +[UIColor systemExtraLightGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v20 forKeyedSubscript:@"system-extra-light-gray"];

    v21 = +[UIColor systemLightGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v21 forKeyedSubscript:@"system-light-gray"];

    v22 = +[UIColor systemLightMidGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v22 forKeyedSubscript:@"system-light-mid-gray"];

    v23 = +[UIColor systemBlackColor];
    [(NSMutableDictionary *)v2->_colors setObject:v23 forKeyedSubscript:@"system-black"];

    v24 = +[UIColor systemDarkRedColor];
    [(NSMutableDictionary *)v2->_colors setObject:v24 forKeyedSubscript:@"system-dark-red"];

    v25 = +[UIColor systemDarkGreenColor];
    [(NSMutableDictionary *)v2->_colors setObject:v25 forKeyedSubscript:@"system-dark-green"];

    v26 = +[UIColor systemDarkBlueColor];
    [(NSMutableDictionary *)v2->_colors setObject:v26 forKeyedSubscript:@"system-dark-blue"];

    v27 = +[UIColor systemDarkOrangeColor];
    [(NSMutableDictionary *)v2->_colors setObject:v27 forKeyedSubscript:@"system-dark-orange"];

    v28 = +[UIColor systemDarkYellowColor];
    [(NSMutableDictionary *)v2->_colors setObject:v28 forKeyedSubscript:@"system-dark-yellow"];

    v29 = +[UIColor systemDarkTealColor];
    [(NSMutableDictionary *)v2->_colors setObject:v29 forKeyedSubscript:@"system-dark-teal"];

    v30 = +[UIColor systemDarkPinkColor];
    [(NSMutableDictionary *)v2->_colors setObject:v30 forKeyedSubscript:@"system-dark-pink"];

    v31 = +[UIColor systemDarkPurpleColor];
    [(NSMutableDictionary *)v2->_colors setObject:v31 forKeyedSubscript:@"system-dark-purple"];

    v32 = +[UIColor systemDarkExtraLightGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v32 forKeyedSubscript:@"system-dark-extra-light-gray"];

    v33 = +[UIColor systemDarkLightGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v33 forKeyedSubscript:@"system-dark-light-gray"];

    v34 = +[UIColor systemDarkLightMidGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v34 forKeyedSubscript:@"system-dark-light-mid-gray"];

    v35 = +[UIColor systemDarkMidGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v35 forKeyedSubscript:@"system-dark-mid-gray"];

    v36 = +[UIColor systemDarkGrayColor];
    [(NSMutableDictionary *)v2->_colors setObject:v36 forKeyedSubscript:@"system-dark-gray"];

    v37 = +[UIColor systemGray2Color];
    [(NSMutableDictionary *)v2->_colors setObject:v37 forKeyedSubscript:@"system-gray-2"];

    v38 = +[UIColor systemGray3Color];
    [(NSMutableDictionary *)v2->_colors setObject:v38 forKeyedSubscript:@"system-gray-3"];

    v39 = +[UIColor systemGray4Color];
    [(NSMutableDictionary *)v2->_colors setObject:v39 forKeyedSubscript:@"system-gray-4"];

    v40 = +[UIColor systemGray5Color];
    [(NSMutableDictionary *)v2->_colors setObject:v40 forKeyedSubscript:@"system-gray-5"];

    v41 = +[UIColor systemGray6Color];
    [(NSMutableDictionary *)v2->_colors setObject:v41 forKeyedSubscript:@"system-gray-6"];

    v42 = +[UIColor externalSystemTealColor];
    [(NSMutableDictionary *)v2->_colors setObject:v42 forKeyedSubscript:@"external-system-teal"];

    v43 = +[UIColor externalSystemRedColor];
    [(NSMutableDictionary *)v2->_colors setObject:v43 forKeyedSubscript:@"external-system-red"];

    v44 = +[UIColor externalSystemGreenColor];
    [(NSMutableDictionary *)v2->_colors setObject:v44 forKeyedSubscript:@"external-system-green"];

    v45 = +[UIColor systemExtraLightGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v45 forKeyedSubscript:@"system-extra-light-gray-tint"];

    v46 = +[UIColor systemLightGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v46 forKeyedSubscript:@"system-light-gray-tint"];

    v47 = +[UIColor systemLightMidGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v47 forKeyedSubscript:@"system-light-mid-gray-tint"];

    v48 = +[UIColor systemGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v48 forKeyedSubscript:@"system-gray-tint"];

    v49 = +[UIColor systemMidGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v49 forKeyedSubscript:@"system-mid-gray-tint"];

    v50 = +[UIColor systemDarkExtraLightGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v50 forKeyedSubscript:@"system-dark-extra-light-gray-tint"];

    v51 = +[UIColor systemDarkLightGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v51 forKeyedSubscript:@"system-dark-light-gray-tint"];

    v52 = +[UIColor systemDarkLightMidGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v52 forKeyedSubscript:@"system-dark-light-mid-gray-tint"];

    v53 = +[UIColor systemDarkMidGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v53 forKeyedSubscript:@"system-dark-mid-gray-tint"];

    v54 = +[UIColor systemDarkGrayTintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v54 forKeyedSubscript:@"system-dark-gray-tint"];

    v55 = +[UIColor labelColor];
    [(NSMutableDictionary *)v2->_colors setObject:v55 forKeyedSubscript:@"label"];

    v56 = +[UIColor secondaryLabelColor];
    [(NSMutableDictionary *)v2->_colors setObject:v56 forKeyedSubscript:@"secondary-label"];

    v57 = +[UIColor tertiaryLabelColor];
    [(NSMutableDictionary *)v2->_colors setObject:v57 forKeyedSubscript:@"tertiary-label"];

    v58 = +[UIColor quaternaryLabelColor];
    [(NSMutableDictionary *)v2->_colors setObject:v58 forKeyedSubscript:@"quaternary-label"];

    v59 = +[UIColor linkColor];
    [(NSMutableDictionary *)v2->_colors setObject:v59 forKeyedSubscript:@"link"];

    v60 = +[UIColor placeholderTextColor];
    [(NSMutableDictionary *)v2->_colors setObject:v60 forKeyedSubscript:@"placeholder-text"];

    v61 = +[UIColor separatorColor];
    [(NSMutableDictionary *)v2->_colors setObject:v61 forKeyedSubscript:@"separator"];

    v62 = +[UIColor opaqueSeparatorColor];
    [(NSMutableDictionary *)v2->_colors setObject:v62 forKeyedSubscript:@"opaque-separator"];

    v63 = +[UIColor systemBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v63 forKeyedSubscript:@"system-background"];

    v64 = +[UIColor secondarySystemBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v64 forKeyedSubscript:@"secondary-system-background"];

    v65 = +[UIColor tertiarySystemBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v65 forKeyedSubscript:@"tertiary-system-background"];

    v66 = +[UIColor systemGroupedBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v66 forKeyedSubscript:@"system-grouped-background"];

    v67 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v67 forKeyedSubscript:@"secondary-system-grouped-background"];

    v68 = +[UIColor tertiarySystemGroupedBackgroundColor];
    [(NSMutableDictionary *)v2->_colors setObject:v68 forKeyedSubscript:@"tertiary-system-grouped-background"];

    v69 = +[UIColor systemFillColor];
    [(NSMutableDictionary *)v2->_colors setObject:v69 forKeyedSubscript:@"system-fill"];

    v70 = +[UIColor secondarySystemFillColor];
    [(NSMutableDictionary *)v2->_colors setObject:v70 forKeyedSubscript:@"secondary-system-fill"];

    v71 = +[UIColor tertiarySystemFillColor];
    [(NSMutableDictionary *)v2->_colors setObject:v71 forKeyedSubscript:@"tertiary-system-fill"];

    v72 = +[UIColor quaternarySystemFillColor];
    [(NSMutableDictionary *)v2->_colors setObject:v72 forKeyedSubscript:@"quaternary-system-fill"];

    v73 = +[UIColor tintColor];
    [(NSMutableDictionary *)v2->_colors setObject:v73 forKeyedSubscript:@"accent"];
  }

  return v2;
}

@end