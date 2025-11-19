@interface APRequirements
+ (BOOL)_buildErrorWithCode:(int64_t)a3 message:(id)a4 returningError:(id *)a5;
+ (BOOL)_testForFileSystemReturningError:(id *)a3;
+ (BOOL)hasRequirements:(unint64_t)a3 error:(id *)a4;
@end

@implementation APRequirements

+ (BOOL)hasRequirements:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, a3, a4))
  {
    v9 = qword_1EBC37080 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v6, v7, v8);
    v13 = objc_msgSend_valueForKey_(v10, v11, @"FailForTheseRequirements", v12);

    if (v13)
    {
      v17 = qword_1EBC37080 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      qword_1EBC37080 = objc_msgSend_unsignedIntegerValue(v13, v14, v15, v16);
    }
  }

  if ((v5 & 1) == 0 || (v18 = objc_msgSend__testForFileSystemReturningError_(APRequirements, v6, a4, v8)) != 0)
  {
    LOBYTE(v18) = v5 & 1;
  }

  return v18;
}

+ (BOOL)_testForFileSystemReturningError:(id *)a3
{
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, a3, v3) || (qword_1EBC37080 & 1) == 0)
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6, v7);
    v9 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v13 = objc_msgSend_firstObject(v9, v10, v11, v12);

    if (!v13)
    {
      objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v14, 16001, @"No access to ~/Library", a3);
      v35 = 0;
LABEL_21:

      return v35;
    }

    v17 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v14, v13, v15);
    if (v17)
    {
      v38 = 0;
      if (objc_msgSend_fileExistsAtPath_isDirectory_(v8, v16, v13, &v38))
      {
        v20 = *MEMORY[0x1E695DBB0];
        v21 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v18, *MEMORY[0x1E695DB78], v19, *MEMORY[0x1E695DBB0], 0);
        v23 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v8, v22, v17, v21, 1, a3);
        v27 = objc_msgSend_firstObject(v23, v24, v25, v26);

        if (v27)
        {
          v37 = 0;
          ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v27, v28, &v37, v20, a3);
          v30 = v37;
          v34 = v30;
          if (!ResourceValue_forKey_error || v30 && (objc_msgSend_BOOLValue(v30, v31, v32, v33) & 1) != 0)
          {
            v35 = 1;
          }

          else
          {
            objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v31, 16001, @"Directory isn't readable at ~/Library.", a3);
            v35 = 0;
          }
        }

        else
        {
          objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v28, 16001, @"Directory doesn't exist at ~/Library.", a3);
          v35 = 0;
        }

        goto LABEL_20;
      }

      objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v18, 16001, @"Directory doesn't exist at ~/Library.", a3);
    }

    else
    {
      objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v16, 16001, @"No access to ~/Library", a3);
    }

    v35 = 0;
LABEL_20:

    goto LABEL_21;
  }

  objc_msgSend__buildErrorWithCode_message_returningError_(APRequirements, v5, 16001, @"Mocking No Access to UserLibraryFileSystem.", a3);
  return 0;
}

+ (BOOL)_buildErrorWithCode:(int64_t)a3 message:(id)a4 returningError:(id *)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = a4;
    v8 = MEMORY[0x1E695DF20];
    v9 = a4;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v8, v10, v18, &v17, 1);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v12, @"com.apple.ap.requirementsErrorDomain", a3, v11);

    v14 = v13;
    *a5 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

@end