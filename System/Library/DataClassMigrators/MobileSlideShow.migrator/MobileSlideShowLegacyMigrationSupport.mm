@interface MobileSlideShowLegacyMigrationSupport
- (BOOL)_migrateCameraRollFiles;
- (BOOL)_migrateMetadataFilesToPhotoData;
- (BOOL)performMigration;
- (MobileSlideShowLegacyMigrationSupport)initWithLibraryURL:(id)l;
- (void)_generateMigrationFilegroupsAndOptions;
- (void)_migrateAssetsdPreferencesDomain;
- (void)_removeOldLargeThubnails;
@end

@implementation MobileSlideShowLegacyMigrationSupport

- (void)_removeOldLargeThubnails
{
  v3 = +[PLFileUtilities fileManager];
  pathManager = [(MobileSlideShowLegacyMigrationSupport *)self pathManager];
  v5 = [pathManager photoDirectoryWithType:29];

  v20 = v5;
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v32 = NSURLNameKey;
  v7 = [NSArray arrayWithObjects:&v32 count:1];
  v19 = v6;
  v8 = [v3 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:1 errorHandler:0];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v22 = 7;
        if ([PLModelMigrator shouldImportAssetsFromDCIMSubDirectoryAtURL:v14 assetsKind:&v22])
        {
          v15 = v22 > 1;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v21 = 0;
          v16 = [v3 removeItemAtURL:v14 error:&v21];
          v17 = v21;
          if ((v16 & 1) == 0)
          {
            v18 = PLMigrationGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v14;
              v29 = 2112;
              v30 = v17;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Could not remove the old large thumbnails directory %@. Error: %@", buf, 0x16u);
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v11);
  }
}

- (BOOL)_migrateMetadataFilesToPhotoData
{
  pathManager = [(MobileSlideShowLegacyMigrationSupport *)self pathManager];
  v3 = [pathManager photoDirectoryWithType:1];

  v4 = [v3 stringByAppendingPathComponent:@"DCIM"];
  v5 = [v3 stringByAppendingPathComponent:@"PhotoData/MISC"];
  v6 = [v3 stringByAppendingPathComponent:@"PhotoData"];
  v7 = [v3 stringByAppendingPathComponent:@"Photos/Videos"];
  v128 = [v4 stringByAppendingPathComponent:@".MISC"];
  v8 = [v6 stringByAppendingPathComponent:@"Videos"];
  v9 = +[PLFileUtilities fileManager];
  v124 = v6;
  if (([v9 fileExistsAtPath:v6] & 1) == 0)
  {
    v157 = 0;
    v10 = [PLFileUtilities createDirectoryAtPath:v6 error:&v157];
    v11 = v157;
    if ((v10 & 1) == 0)
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v165 = v124;
        v166 = 2114;
        v167 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Unable to create directory: %{public}@, reason: %{public}@", buf, 0x16u);
      }
    }
  }

  if (([v9 fileExistsAtPath:v128] & 1) != 0 || (objc_msgSend(v9, "fileExistsAtPath:", v8) & 1) == 0)
  {
    v122 = v4;
    v123 = v5;
    v127 = v9;
    if (![v9 fileExistsAtPath:v128])
    {
LABEL_42:
      v149 = 0;
      v33 = [v9 contentsOfDirectoryAtPath:v4 error:&v149];
      v114 = v149;
      v115 = v33;
      if (v114)
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v165 = v4;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Failed to enumerate %{public}@. No *APPLE or *IMPRT directories will be migrated.", buf, 0xCu);
        }

        LODWORD(v106) = 1;
        goto LABEL_91;
      }

      v111 = v8;
      v113 = v7;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v35 = v33;
      v36 = [v35 countByEnumeratingWithState:&v145 objects:v163 count:16];
      if (!v36)
      {
        LODWORD(v106) = 1;
        goto LABEL_90;
      }

      v37 = v36;
      v108 = v3;
      v125 = *v146;
      while (1)
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v146 != v125)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v145 + 1) + 8 * i);
          [v39 rangeOfString:@"APPLE"];
          if (!v40)
          {
            [v39 rangeOfString:@"IMPRT"];
            if (!v41)
            {
              continue;
            }
          }

          v42 = [v4 stringByAppendingPathComponent:v39];
          v43 = [v42 stringByAppendingPathComponent:@".MISC"];

          v44 = [v124 stringByAppendingPathComponent:v39];
          v45 = [v9 contentsOfDirectoryAtPath:v43 error:0];
          if ([v9 fileExistsAtPath:v43] && objc_msgSend(v45, "count"))
          {
            if ([v9 fileExistsAtPath:v44])
            {
              v143 = 0;
              v46 = [v9 removeItemAtPath:v44 error:&v143];
              v47 = v143;
              v48 = v47;
              if (v46)
              {

                goto LABEL_58;
              }

              v5 = v123;
              if (v47)
              {
                v59 = PLMigrationGetLog();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v165 = v44;
                  v166 = 2114;
                  v167 = v43;
                  v168 = 2114;
                  v169 = v48;
                  v60 = v59;
                  v61 = "Failed to delete existing %{public}@ [Migration will skip %{public}@.] Error: %{public}@";
                  v62 = 32;
LABEL_78:
                  _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, v61, buf, v62);
                }

                goto LABEL_79;
              }

              goto LABEL_80;
            }

LABEL_58:
            v161 = NSFileProtectionKey;
            v162 = NSFileProtectionCompleteUntilFirstUserAuthentication;
            v49 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
            v142 = 0;
            v50 = [v9 setAttributes:v49 ofItemAtPath:v43 error:&v142];
            v51 = v142;

            if ((v50 & 1) == 0)
            {
              v52 = PLMigrationGetLog();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v165 = v43;
                v166 = 2114;
                v167 = v51;
                _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %{public}@: %{public}@", buf, 0x16u);
              }
            }

            v141 = 0;
            v53 = [v127 moveItemAtPath:v43 toPath:v44 error:&v141];
            v54 = v141;
            v55 = v54;
            if ((v53 & 1) == 0 && v54)
            {
              v56 = PLMigrationGetLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v165 = v43;
                v166 = 2114;
                v167 = v44;
                v168 = 2114;
                v169 = v55;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@ [Migration will fail.] Error: %{public}@", buf, 0x20u);
              }
            }

            v4 = v122;
            v5 = v123;
            if ((v53 & 1) == 0)
            {

              LODWORD(v106) = 0;
              v7 = v113;
              v9 = v127;
              goto LABEL_85;
            }
          }

          else if ([v9 fileExistsAtPath:v43])
          {
            v144 = 0;
            v57 = [v127 removeItemAtPath:v43 error:&v144];
            v58 = v144;
            v48 = v58;
            if ((v57 & 1) != 0 || !v58)
            {
              v5 = v123;
            }

            else
            {
              v59 = PLMigrationGetLog();
              v5 = v123;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v165 = v43;
                v166 = 2114;
                v167 = v48;
                v60 = v59;
                v61 = "Failed to remove empty %{public}@. Error: %{public}@";
                v62 = 22;
                goto LABEL_78;
              }

LABEL_79:
            }

LABEL_80:
          }

          v9 = v127;
          continue;
        }

        v37 = [v35 countByEnumeratingWithState:&v145 objects:v163 count:16];
        if (!v37)
        {
          LODWORD(v106) = 1;
          v7 = v113;
LABEL_85:
          v3 = v108;
LABEL_90:
          v34 = v35;
          v8 = v111;
LABEL_91:

          v63 = [v5 stringByAppendingPathComponent:@"Info.plist"];
          if ([v9 fileExistsAtPath:v63])
          {
            v64 = +[PLSimpleDCIMDirectory cameraRollPlistName];
            v65 = v5;
            v66 = v64;
            v67 = [v65 stringByAppendingPathComponent:v64];

            if (([v9 fileExistsAtPath:v67] & 1) == 0)
            {
              v68 = [NSDictionary dictionaryWithContentsOfFile:v63];
              v69 = [PLSimpleDCIMDirectory migrateOldPlistToNewPlist:v68];
              if (v69)
              {
                v119 = v63;
                v70 = [NSPropertyListSerialization dataWithPropertyList:v69 format:100 options:0 error:0];
                [v70 writeToFile:v67 options:1073741825 error:0];
                v140 = 0;
                v71 = [PLFileUtilities changeFileOwnerToMobileAtPath:v67 error:&v140];
                v72 = v140;
                if ((v71 & 1) == 0)
                {
                  v73 = v7;
                  v74 = PLMigrationGetLog();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v165 = v67;
                    v166 = 2114;
                    v167 = v72;
                    _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "Unable to change owner of file at path: %{public}@, reason: %{public}@", buf, 0x16u);
                  }

                  v7 = v73;
                }

                v4 = v122;
                v63 = v119;
              }
            }

            v9 = v127;
            [v127 removeItemAtPath:v63 error:0];

            v5 = v123;
          }

          if (([v9 fileExistsAtPath:v8] & 1) == 0)
          {
            v139 = 0;
            v75 = [PLFileUtilities createDirectoryAtPath:v8 error:&v139];
            v76 = v139;
            if (v75)
            {

              if (v106)
              {
                v138 = 0;
                v77 = [v9 subpathsOfDirectoryAtPath:v7 error:&v138];
                v112 = v138;
                if (!v77)
                {
                  if ([v9 fileExistsAtPath:v7 isDirectory:0])
                  {
                    v102 = PLMigrationGetLog();
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v165 = v7;
                      v166 = 2114;
                      v167 = v112;
                      _os_log_impl(&dword_0, v102, OS_LOG_TYPE_ERROR, "Failed to enumerate old iTunes videos paths at %{public}@ [Migration will continue.] Error: %{public}@", buf, 0x16u);
                    }
                  }

                  v78 = 0;
                  LOBYTE(v106) = 1;
                  goto LABEL_153;
                }

                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v78 = v77;
                v126 = [v78 countByEnumeratingWithState:&v134 objects:v160 count:16];
                if (!v126)
                {
                  LOBYTE(v106) = 1;
                  goto LABEL_152;
                }

                v109 = v3;
                v121 = *v135;
                *&v79 = 138543874;
                v106 = v79;
                v120 = v63;
                v117 = v78;
LABEL_107:
                v80 = 0;
                while (1)
                {
                  if (*v135 != v121)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v81 = *(*(&v134 + 1) + 8 * v80);
                  v106 = [v7 stringByAppendingPathComponent:v81, v106];
                  v133 = 0;
                  if ([v9 fileExistsAtPath:v106 isDirectory:&v133])
                  {
                    if ((v133 & 1) == 0)
                    {
                      goto LABEL_129;
                    }

                    pathExtension = [v106 pathExtension];
                    v83 = [pathExtension isEqualToString:@"MISC"];

                    v5 = v123;
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_129;
                    }
                  }

                  else if ((v133 & 1) == 0)
                  {
                    goto LABEL_129;
                  }

                  v84 = [v8 stringByAppendingPathComponent:v81];
                  stringByDeletingLastPathComponent = [v84 stringByDeletingLastPathComponent];
                  if ([v127 fileExistsAtPath:stringByDeletingLastPathComponent])
                  {
                    v132 = 0;
                    v86 = [v127 removeItemAtPath:stringByDeletingLastPathComponent error:&v132];
                    v87 = v132;
                    v88 = v87;
                    if ((v86 & 1) == 0)
                    {
                      v5 = v123;
                      v3 = v109;
                      if (v87)
                      {
                        v103 = PLMigrationGetLog();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v165 = stringByDeletingLastPathComponent;
                          v166 = 2114;
                          v167 = v88;
                          v104 = "Failed to remove %{public}@ to replace it with the current version [Migration will fail.] Error: %{public}@";
LABEL_149:
                          _os_log_impl(&dword_0, v103, OS_LOG_TYPE_ERROR, v104, buf, 0x16u);
                        }

LABEL_150:
                      }

LABEL_151:

                      LOBYTE(v106) = 0;
                      v9 = v127;
                      v63 = v120;
                      v78 = v117;
                      goto LABEL_152;
                    }
                  }

                  v131 = 0;
                  v89 = [PLFileUtilities createDirectoryAtPath:stringByDeletingLastPathComponent error:&v131];
                  v90 = v131;
                  v88 = v90;
                  if ((v89 & 1) == 0)
                  {
                    v5 = v123;
                    v3 = v109;
                    if (v90)
                    {
                      v103 = PLMigrationGetLog();
                      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v165 = stringByDeletingLastPathComponent;
                        v166 = 2114;
                        v167 = v88;
                        v104 = "Failed to create %{public}@ to hold the video's metadata [Migration will fail.] Error: %{public}@";
                        goto LABEL_149;
                      }

                      goto LABEL_150;
                    }

                    goto LABEL_151;
                  }

                  v91 = v8;
                  v92 = v7;
                  v158 = NSFileProtectionKey;
                  v159 = NSFileProtectionCompleteUntilFirstUserAuthentication;
                  v93 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                  v130 = 0;
                  v94 = [v127 setAttributes:v93 ofItemAtPath:v106 error:&v130];
                  v95 = v130;

                  if ((v94 & 1) == 0)
                  {
                    v96 = PLMigrationGetLog();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v165 = v106;
                      v166 = 2114;
                      v167 = v95;
                      _os_log_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %{public}@: %{public}@", buf, 0x16u);
                    }
                  }

                  v129 = 0;
                  v97 = [v127 moveItemAtPath:v106 toPath:v84 error:&v129];
                  v98 = v129;
                  v99 = v98;
                  if ((v97 & 1) == 0 && v98)
                  {
                    v100 = PLMigrationGetLog();
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v106;
                      v165 = v106;
                      v166 = 2114;
                      v167 = v84;
                      v168 = 2114;
                      v169 = v99;
                      _os_log_impl(&dword_0, v100, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@ [Migration will continue.] Error: %{public}@", buf, 0x20u);
                    }
                  }

                  v4 = v122;
                  v5 = v123;
                  v7 = v92;
                  v8 = v91;
                  v63 = v120;
                  v78 = v117;
LABEL_129:

                  v80 = v80 + 1;
                  v9 = v127;
                  if (v126 == v80)
                  {
                    v126 = [v78 countByEnumeratingWithState:&v134 objects:v160 count:16];
                    if (v126)
                    {
                      goto LABEL_107;
                    }

                    LOBYTE(v106) = 1;
                    v3 = v109;
LABEL_152:

LABEL_153:
                    v101 = v112;
                    goto LABEL_154;
                  }
                }
              }
            }

            else
            {
              if (v76)
              {
                v112 = v76;
                v78 = PLMigrationGetLog();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v165 = v8;
                  v166 = 2114;
                  v167 = v112;
                  _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ [Migration will fail.] Error: %{public}@", buf, 0x16u);
                }

                LOBYTE(v106) = 0;
                goto LABEL_153;
              }

              v101 = 0;
              LOBYTE(v106) = 0;
LABEL_154:
            }
          }

          goto LABEL_156;
        }
      }
    }

    v156 = 0;
    v14 = [v9 contentsOfDirectoryAtPath:v128 error:&v156];
    v15 = v156;
    if ([v14 count])
    {
      v118 = v15;
      v155 = 0;
      v16 = [PLFileUtilities createDirectoryAtPath:v5 error:&v155];
      v17 = v155;
      if ((v16 & 1) == 0)
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v165 = v5;
          v166 = 2114;
          v167 = v17;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@ Error: %{public}@", buf, 0x16u);
        }
      }

      v116 = v17;
      v110 = v8;
      v107 = v3;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v151 objects:v170 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v152;
        do
        {
          v23 = 0;
          do
          {
            if (*v152 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v151 + 1) + 8 * v23);
            v25 = [v128 stringByAppendingPathComponent:v24];
            v26 = [v5 stringByAppendingPathComponent:v24];
            if ([v19 count] == &dword_0 + 1 && objc_msgSend(v24, "isEqualToString:", @"Info.plist") && (objc_msgSend(v127, "fileExistsAtPath:", v26) & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"Incoming") & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"Timelapse") & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"LastTimelapse") & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"Iris") & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"nebuladkeepalive") & 1) != 0)
            {
              v27 = 0;
            }

            else
            {
              v150 = 0;
              v28 = [v127 moveItemAtPath:v25 toPath:v26 error:&v150];
              v29 = v150;
              v27 = v29;
              if ((v28 & 1) == 0 && v29)
              {
                v30 = PLMigrationGetLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v165 = v25;
                  v166 = 2114;
                  v167 = v26;
                  v168 = 2114;
                  v169 = v27;
                  _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@ [Migration will continue.] Error: %{public}@", buf, 0x20u);
                }
              }

              v5 = v123;
            }

            v23 = v23 + 1;
          }

          while (v21 != v23);
          v31 = [v19 countByEnumeratingWithState:&v151 objects:v170 count:16];
          v21 = v31;
        }

        while (v31);
      }

      v3 = v107;
      v8 = v110;
      v4 = v122;
      v9 = v127;
      v15 = v118;
      v32 = v116;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_41;
      }

      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v165 = v128;
        v166 = 2114;
        v167 = v5;
        v168 = 2114;
        v169 = v15;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Failed to enumerate %{public}@. Its files won't be moved to %{public}@. Error %{public}@", buf, 0x20u);
      }
    }

LABEL_41:
    goto LABEL_42;
  }

  LOBYTE(v106) = 1;
LABEL_156:

  return v106;
}

- (BOOL)_migrateCameraRollFiles
{
  [(MobileSlideShowLegacyMigrationSupport *)self _generateMigrationFilegroupsAndOptions];
  selfCopy = self;
  v3 = [(NSMutableArray *)self->_fileGroupsToMigrate count];
  v4 = +[PLFileUtilities fileManager];
  v29 = v3;
  if (v3 >= 1)
  {
    v6 = 0;
    *&v5 = 138543618;
    v28 = v5;
    do
    {
      v7 = [(NSMutableArray *)selfCopy->_fileGroupsToMigrate objectAtIndex:v6, v28];
      v8 = [(NSMutableArray *)selfCopy->_fileGroupProcessingOptions objectAtIndex:v6];
      intValue = [v8 intValue];

      [v7 createMetadataDirectoryIfNecessary];
      pathForContainingDirectory = [v7 pathForContainingDirectory];
      pathForThumbnailFile = [v7 pathForThumbnailFile];
      thumbnailFilename = [v7 thumbnailFilename];
      v13 = [pathForContainingDirectory stringByAppendingPathComponent:thumbnailFilename];

      v41 = NSFileProtectionKey;
      v42 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v14 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v35 = 0;
      v15 = v4;
      v16 = [v4 setAttributes:v14 ofItemAtPath:v13 error:&v35];
      v17 = v35;

      if ((v16 & 1) == 0 && [v17 code] != &dword_4)
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v28;
          v38 = v13;
          v39 = 2114;
          v40 = v17;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %{public}@: %{public}@", buf, 0x16u);
        }
      }

      v4 = v15;
      [v15 moveItemAtPath:v13 toPath:pathForThumbnailFile error:0];
      if ((intValue & 0x10) != 0)
      {
        [v7 deleteObsoleteFiles];
      }

      if ((intValue & 0x20) != 0)
      {
        [v7 deleteFiles];
      }

      else
      {
        [v7 setWriteIsPending:0];
      }

      ++v6;
    }

    while (v29 != v6);
  }

  strayFileGroups = selfCopy->_strayFileGroups;
  if (strayFileGroups)
  {
    v20 = v4;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = strayFileGroups;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          [v26 deleteFiles];
          [v26 setWriteIsPending:0];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v23);
    }

    v4 = v20;
  }

  return 1;
}

- (void)_generateMigrationFilegroupsAndOptions
{
  selfCopy = self;
  pathManager = [(MobileSlideShowLegacyMigrationSupport *)self pathManager];
  v4 = [pathManager photoDirectoryWithType:4];

  v5 = +[PLFileUtilities fileManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v38 = MGGetBoolAnswer();
    v31 = v4;
    v30 = [[PLPhotoDCIMDirectory alloc] initWithDCIMPath:v4];
    [v30 dcfDirectories];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v51 = 0u;
    v34 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v34)
    {
      goto LABEL_44;
    }

    v33 = *v49;
    v37 = v5;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v6;
        v7 = *(*(&v48 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        [v7 setConsiderInvalidFileGroups:1];
        fileGroups = [v7 fileGroups];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v39 = fileGroups;
        v41 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v41)
        {
          v40 = *v45;
          do
          {
            for (i = 0; i != v41; i = i + 1)
            {
              if (*v45 != v40)
              {
                objc_enumerationMutation(v39);
              }

              v10 = *(*(&v44 + 1) + 8 * i);
              v11 = objc_autoreleasePoolPush();
              hasVideoFile = [v10 hasVideoFile];
              if (hasVideoFile)
              {
                [v10 pathForVideoFile];
              }

              else
              {
                [v10 pathForFullSizeImage];
              }
              v13 = ;
              pathForThumbnailFile = [v10 pathForThumbnailFile];
              pathForPrebakedThumbnail = [v10 pathForPrebakedThumbnail];
              hasObsoleteFiles = [v10 hasObsoleteFiles];
              v16 = [v5 fileExistsAtPath:v13];
              if ((v16 & 1) == 0 && !hasObsoleteFiles)
              {
                [(NSMutableArray *)selfCopy->_strayFileGroups addObject:v10];
                goto LABEL_40;
              }

              if (hasObsoleteFiles)
              {
                v17 = 16;
              }

              else
              {
                v17 = 0;
              }

              if (v16)
              {
                v18 = v17;
              }

              else
              {
                v18 = v17 | 0x20;
              }

              v42 = v11;
              if (hasVideoFile)
              {
                pathForVideoPreviewFile = [v10 pathForVideoPreviewFile];
                v20 = [v5 fileExistsAtPath:pathForVideoPreviewFile];

                if (v20)
                {
                  v18 |= 8u;
                }
              }

              else
              {
                v20 = 0;
              }

              if (v38)
              {
                pathForPrebakedWildcatThumbnailsFile = [v10 pathForPrebakedWildcatThumbnailsFile];
                v22 = [v5 fileExistsAtPath:pathForPrebakedWildcatThumbnailsFile];
                v23 = selfCopy;
                v24 = v22;

                v25 = (v24 & 1) == 0;
                selfCopy = v23;
                if (v25)
                {
                  v18 |= 4u;
                }
              }

              v11 = v42;
              if ((hasVideoFile & 1) == 0)
              {
                v5 = v37;
                if (![v37 fileExistsAtPath:pathForPrebakedThumbnail])
                {
                  v18 |= 2u;
                }

                v26 = [v37 fileExistsAtPath:pathForThumbnailFile];
LABEL_39:
                v27 = v26 ^ 1;
                [(NSMutableArray *)selfCopy->_fileGroupsToMigrate addObject:v10];
                fileGroupProcessingOptions = selfCopy->_fileGroupProcessingOptions;
                v29 = [NSNumber numberWithInt:v18 | v27];
                [(NSMutableArray *)fileGroupProcessingOptions addObject:v29];

                v11 = v42;
                goto LABEL_40;
              }

              v5 = v37;
              v26 = [v37 fileExistsAtPath:pathForThumbnailFile];
              if (v20)
              {
                goto LABEL_39;
              }

LABEL_40:
              [v10 setWriteIsPending:1];

              objc_autoreleasePoolPop(v11);
            }

            v41 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v41);
        }

        objc_autoreleasePoolPop(context);
        v6 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v34)
      {
LABEL_44:

        v4 = v31;
        break;
      }
    }
  }
}

- (void)_migrateAssetsdPreferencesDomain
{
  v2 = CFPreferencesCopyAppValue(@"DCFLastDirectoryNumber", @"assetsd");
  if (v2)
  {
    v3 = v2;
    CFPreferencesSetAppValue(@"DCFLastDirectoryNumber", v2, @"com.apple.assetsd");
    CFPreferencesAppSynchronize(@"com.apple.assetsd");
    CFPreferencesSetAppValue(@"DCFLastDirectoryNumber", 0, @"assetsd");
    CFPreferencesAppSynchronize(@"assetsd");

    CFRelease(v3);
  }
}

- (BOOL)performMigration
{
  [(MobileSlideShowLegacyMigrationSupport *)self _migrateAssetsdPreferencesDomain];
  if ([(MobileSlideShowLegacyMigrationSupport *)self _migrateCameraRollFiles])
  {
    _migrateMetadataFilesToPhotoData = [(MobileSlideShowLegacyMigrationSupport *)self _migrateMetadataFilesToPhotoData];
  }

  else
  {
    _migrateMetadataFilesToPhotoData = 0;
  }

  [(MobileSlideShowLegacyMigrationSupport *)self _removeOldLargeThubnails];
  return _migrateMetadataFilesToPhotoData;
}

- (MobileSlideShowLegacyMigrationSupport)initWithLibraryURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = MobileSlideShowLegacyMigrationSupport;
  v5 = [(MobileSlideShowLegacyMigrationSupport *)&v15 init];
  if (v5)
  {
    v6 = [[PLPhotoLibraryPathManager alloc] initWithLibraryURL:lCopy];
    pathManager = v5->_pathManager;
    v5->_pathManager = v6;

    v8 = objc_alloc_init(NSMutableArray);
    fileGroupsToMigrate = v5->_fileGroupsToMigrate;
    v5->_fileGroupsToMigrate = v8;

    v10 = objc_alloc_init(NSMutableArray);
    fileGroupProcessingOptions = v5->_fileGroupProcessingOptions;
    v5->_fileGroupProcessingOptions = v10;

    v12 = objc_alloc_init(NSMutableArray);
    strayFileGroups = v5->_strayFileGroups;
    v5->_strayFileGroups = v12;
  }

  return v5;
}

@end