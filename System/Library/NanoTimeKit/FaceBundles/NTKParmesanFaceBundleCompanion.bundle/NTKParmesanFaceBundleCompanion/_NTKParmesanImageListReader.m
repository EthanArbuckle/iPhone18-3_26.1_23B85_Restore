@interface _NTKParmesanImageListReader
- (_NTKParmesanImageListReader)initWithResourceDirectory:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation _NTKParmesanImageListReader

- (_NTKParmesanImageListReader)initWithResourceDirectory:(id)a3
{
  v152 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v146.receiver = self;
  v146.super_class = _NTKParmesanImageListReader;
  v8 = [(NTKParmesanAssetReader *)&v146 initWithResourceDirectory:v4];
  if (v8)
  {
    v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138412546;
      v149 = v10;
      v150 = 2112;
      v151 = v4;
      v11 = v10;
      _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "%@: initWithResourceDirectory %@", buf, 0x16u);
    }

    v12 = objc_opt_new();
    assets = v8->_assets;
    v8->_assets = v12;

    if (v4)
    {
      v16 = objc_msgSend_stringByAppendingPathComponent_(v4, v14, kParmesanReaderImagelistFileName, v15);
      v19 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v17, v16, v18);
      v23 = v19;
      if (v19)
      {
        v141 = v16;
        v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, kParmesanReaderAssetCollectionIdentifierKey, v22);
        objc_msgSend_setAssetCollectionIdentifier_(v8, v25, v24, v26);

        v29 = objc_msgSend_objectForKeyedSubscript_(v23, v27, kParmesanReaderPeopleIdentifiersKey, v28);
        objc_msgSend_setPeopleIdentifiers_(v8, v30, v29, v31);

        v34 = objc_msgSend_objectForKeyedSubscript_(v23, v32, kParmesanReaderHasPeopleKey, v33);
        v38 = objc_msgSend_BOOLValue(v34, v35, v36, v37);
        objc_msgSend_setHasPeople_(v8, v39, v38, v40);

        v43 = objc_msgSend_objectForKeyedSubscript_(v23, v41, kParmesanReaderHasPetsKey, v42);
        v47 = objc_msgSend_BOOLValue(v43, v44, v45, v46);
        objc_msgSend_setHasPets_(v8, v48, v47, v49);

        v52 = objc_msgSend_objectForKeyedSubscript_(v23, v50, kParmesanReaderHasNatureKey, v51);
        v56 = objc_msgSend_BOOLValue(v52, v53, v54, v55);
        objc_msgSend_setHasNature_(v8, v57, v56, v58);

        v61 = objc_msgSend_objectForKeyedSubscript_(v23, v59, kParmesanReaderHasCityscapesKey, v60);
        v65 = objc_msgSend_BOOLValue(v61, v62, v63, v64);
        objc_msgSend_setHasCityscapes_(v8, v66, v65, v67);

        v70 = objc_msgSend_objectForKeyedSubscript_(v23, v68, kParmesanReaderHasDailyPhotosKey, v69);
        v74 = objc_msgSend_BOOLValue(v70, v71, v72, v73);
        objc_msgSend_setHasDailyPhotos_(v8, v75, v74, v76);

        v79 = objc_msgSend_objectForKeyedSubscript_(v23, v77, kParmesanReaderUUIDStringKey, v78);
        objc_msgSend_setUuidString_(v8, v80, v79, v81);

        v84 = objc_msgSend_objectForKeyedSubscript_(v23, v82, kParmesanReaderImageListKey, v83);
        v88 = objc_msgSend_assetCollectionIdentifier(v8, v85, v86, v87);
        v89 = v88 != 0;

        if (objc_msgSend_hasPeople(v8, v90, v91, v92) & 1) != 0 || (objc_msgSend_hasPets(v8, v93, v94, v95) & 1) != 0 || (objc_msgSend_hasNature(v8, v93, v94, v95))
        {
          hasCityscapes = 1;
        }

        else
        {
          hasCityscapes = objc_msgSend_hasCityscapes(v8, v93, v94, v95);
        }

        if (hasCityscapes + objc_msgSend_hasDailyPhotos(v8, v93, v94, v95) + v89 >= 2)
        {
          v100 = objc_msgSend_logObject(NTKParmesanFaceBundle, v97, v98, v99);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7D6C();
          }
        }

        hasPeople = objc_msgSend_hasPeople(v8, v97, v98, v99);
        v102 = v8;
        v106 = objc_msgSend_peopleIdentifiers(v8, v103, v104, v105);
        v110 = hasPeople ^ (objc_msgSend_count(v106, v107, v108, v109) == 0);

        if ((v110 & 1) == 0)
        {
          v114 = objc_msgSend_logObject(NTKParmesanFaceBundle, v111, v112, v113);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7DE0();
          }
        }

        v115 = objc_msgSend_objectForKeyedSubscript_(v23, v111, kParmesanReaderVersionKey, v113);
        v139 = v115;
        v140 = v23;
        if (v115)
        {
          v119 = objc_msgSend_integerValue(v115, v116, v117, v118);
          v8 = v102;
          objc_msgSend_setVersion_(v102, v120, v119, v121);
        }

        else
        {
          v123 = objc_msgSend_logObject(NTKParmesanFaceBundle, v116, v117, v118);
          v8 = v102;
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7E54(v102, v123);
          }

          objc_msgSend_setVersion_(v102, v124, 0, v125);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v122 = v84;
        v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v126, &v142, v147, 16);
        if (v127)
        {
          v129 = v127;
          v130 = *v143;
          do
          {
            for (i = 0; i != v129; ++i)
            {
              if (*v143 != v130)
              {
                objc_enumerationMutation(v122);
              }

              v132 = *(*(&v142 + 1) + 8 * i);
              v136 = objc_msgSend_decodeFromDictionary_inResourceDirectory_(NTKParmesanAsset, v128, v132, v4);
              if (v136)
              {
                objc_msgSend_addObject_(v8->_assets, v133, v136, v135);
              }

              else
              {
                v137 = objc_msgSend_logObject(NTKParmesanFaceBundle, v133, v134, v135);
                if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v149 = v102;
                  v150 = 2112;
                  v151 = v132;
                  _os_log_error_impl(&dword_23BF0C000, v137, OS_LOG_TYPE_ERROR, "%@: Failed to decode imageListItem to NTKParmesanAsset. [item: %@]", buf, 0x16u);
                }

                v8 = v102;
              }
            }

            v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v128, &v142, v147, 16);
          }

          while (v129);
        }

        v23 = v140;
        v16 = v141;
      }

      else
      {
        v122 = objc_msgSend_logObject(NTKParmesanFaceBundle, v20, v21, v22);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF7EE8(v8, v16, v122);
        }
      }
    }
  }

  return v8;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_assets, a2, a3, v3) <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_assets, v6, a3, v7);
  }

  return v8;
}

@end