@interface PHPTPUtilities
+ (BOOL)shouldExpungeAsset:(id)a3;
+ (BOOL)shouldExpungeAsset:(id)a3 withFileManager:(id)a4;
@end

@implementation PHPTPUtilities

+ (BOOL)shouldExpungeAsset:(id)a3 withFileManager:(id)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 ptpProperties];
  v6 = [v5 ptpTrashedState];

  v7 = PLPTPGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v4 objectID];
    v9 = [v8 pl_shortURI];
    *buf = 138543618;
    v97 = v9;
    v98 = 2048;
    v99 = v6;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Asset %{public}@ trashed state: 0x%llx", buf, 0x16u);
  }

  v10 = 1;
  [PHAssetResource assetResourcesForAsset:v4 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v11 = v94 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (!v12)
  {
    goto LABEL_124;
  }

  v13 = v12;
  v89 = v4;
  if ((v6 & 0x10000) != 0)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = *v92;
  if ((v6 & 0x8000) != 0)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v75 = v16;
  v76 = v14;
  if ((v6 & 0x4000) != 0)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ((v6 & 0x100) != 0)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v87 = v18;
  v88 = v17;
  if ((v6 & 0x80) != 0)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if ((v6 & 2) != 0)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v85 = v20;
  v86 = v19;
  if ((v6 & 0x2000) != 0)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if ((v6 & 0x40) != 0)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v83 = v22;
  v84 = v21;
  if ((v6 & 0x1000) != 0)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  if ((v6 & 0x800) != 0)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v81 = v24;
  v82 = v23;
  if ((v6 & 0x400) != 0)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  if ((v6 & 0x200) != 0)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v79 = v26;
  v80 = v25;
  if ((v6 & 8) != 0)
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  if ((v6 & 4) != 0)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v77 = v28;
  v78 = v27;
  if (v6)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v90 = v29;
  while (2)
  {
    v30 = 0;
LABEL_51:
    if (*v92 != v15)
    {
      objc_enumerationMutation(v11);
    }

    v31 = *(*(&v91 + 1) + 8 * v30);
    v32 = [v31 type];
    v33 = 1;
    switch(v32)
    {
      case 1:
      case 2:
        v38 = PLPTPGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"OriginalTrashed";
          v98 = 2112;
          v99 = v90;
          v39 = v90;
          _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if (v6)
        {
          goto LABEL_115;
        }

        goto LABEL_122;
      case 3:
        v60 = PLPTPGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AudioTrashed";
          v98 = 2112;
          v99 = v79;
          v61 = v79;
          _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x200) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 4:
        v58 = PLPTPGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AlternateImageTrashed";
          v98 = 2112;
          v99 = v81;
          v59 = v81;
          _os_log_impl(&dword_19C86F000, v58, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x800) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 5:
        v52 = PLPTPGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustedImageTrashed";
          v98 = 2112;
          v99 = v77;
          v53 = v77;
          _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 4) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 6:
        v46 = PLPTPGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustedVideoTrashed";
          v98 = 2112;
          v99 = v78;
          v47 = v78;
          _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 8) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 7:
        v50 = PLPTPGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjutmentDataTrashed";
          v98 = 2112;
          v99 = v85;
          v51 = v85;
          _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 2) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 8:
        v48 = PLPTPGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustmentBasePhotoTrashed";
          v98 = 2112;
          v99 = v86;
          v49 = v86;
          _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 9:
        v56 = PLPTPGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"PairedVideoTrashed";
          v98 = 2112;
          v99 = v82;
          v57 = v82;
          _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 10:
        v62 = PLPTPGetLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustedPairedVideoTrashed";
          v98 = 2112;
          v99 = v80;
          v63 = v80;
          _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x400) != 0)
        {
          goto LABEL_115;
        }

        goto LABEL_122;
      case 11:
        v42 = PLPTPGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustmentBasePairedVideoTrashed";
          v98 = 2112;
          v99 = v88;
          v43 = v88;
          _os_log_impl(&dword_19C86F000, v42, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x4000) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 12:
        v54 = PLPTPGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjustmentBaseVideoTrashed";
          v98 = 2112;
          v99 = v87;
          v55 = v87;
          _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x100) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 13:
      case 14:
      case 15:
      case 19:
      case 20:
        goto LABEL_54;
      case 16:
        v40 = PLPTPGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"OriginalAdjustmentDataTrashed";
          v98 = 2112;
          v99 = v83;
          v41 = v83;
          _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x40) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 17:
        v44 = PLPTPGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"XMPTrashed";
          v98 = 2112;
          v99 = v84;
          v45 = v84;
          _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        if ((v6 & 0x2000) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_115;
      case 18:
        goto LABEL_130;
      default:
        if (v32 != 110)
        {
          if (v32 != 113)
          {
LABEL_130:
            v71 = PLPTPGetLog();
            v4 = v89;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
            {
              v72 = [v31 type];
              v73 = [v89 objectID];
              v74 = [v73 pl_shortURI];
              *buf = 134218242;
              v97 = v72;
              v98 = 2114;
              v99 = v74;
              _os_log_impl(&dword_19C86F000, v71, OS_LOG_TYPE_FAULT, "Unhandled resource type (%lu). Not expunging asset %{public}@.", buf, 0x16u);
            }

            v10 = 0;
            goto LABEL_124;
          }

          v36 = PLPTPGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v97 = @"DiagnosticFileTrashed";
            v98 = 2112;
            v99 = v75;
            v37 = v75;
            _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
          }

          if ((v6 & 0x8000) == 0)
          {
            goto LABEL_122;
          }

LABEL_115:
          if (v13 == ++v30)
          {
            v66 = [v11 countByEnumeratingWithState:&v91 objects:v95 count:16];
            v13 = v66;
            if (!v66)
            {
              v10 = 1;
              goto LABEL_123;
            }

            continue;
          }

          goto LABEL_51;
        }

        v64 = PLPTPGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v97 = @"AdjutmentSecondaryDataTrashed";
          v98 = 2112;
          v99 = v76;
          v65 = v76;
          _os_log_impl(&dword_19C86F000, v64, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }

        v33 = (v6 & 0x10000) >> 16;
LABEL_54:
        v34 = PLPTPGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = [v31 type];
          *buf = 134217984;
          v97 = v35;
          _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
        }

        if (v33)
        {
          goto LABEL_115;
        }

LABEL_122:
        v10 = 0;
LABEL_123:
        v4 = v89;
LABEL_124:

        v67 = PLPTPGetLog();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          if (v10)
          {
            v68 = @"YES";
          }

          else
          {
            v68 = @"NO";
          }

          *buf = 138412290;
          v97 = v68;
          v69 = v68;
          _os_log_impl(&dword_19C86F000, v67, OS_LOG_TYPE_DEBUG, "shouldExpunge: %@", buf, 0xCu);
        }

        return v10;
    }
  }
}

+ (BOOL)shouldExpungeAsset:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  LOBYTE(a1) = [a1 shouldExpungeAsset:v5 withFileManager:v6];

  return a1;
}

@end