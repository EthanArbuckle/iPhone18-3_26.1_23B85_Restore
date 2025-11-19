@interface LSCopyOrMoveFileResource
@end

@implementation LSCopyOrMoveFileResource

uint64_t ___LSCopyOrMoveFileResource_block_invoke(uint64_t a1)
{
  v83[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AF00] currentThread];
  [v3 setName:@"LS MDT helper thread/run loop"];

  cf = 0;
  v4 = objc_alloc_init(_LSOpenCopierContext);
  v5 = *(a1 + 32);
  LOBYTE(v70) = 0;
  v71 = 0;
  if (*(a1 + 72))
  {
    v6 = 0;
LABEL_38:
    v38 = 3;
    goto LABEL_39;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v9;
  v73 = xmmword_1817E8E98;
  v74 = 0;
  DWORD2(v73) = -2147352576;
  if (!v9)
  {
    v83[0] = *MEMORY[0x1E696A278];
    *buf = @"Missing resource file handle";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v83 count:1];
    v30 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v31, "_LSStageOrConfirmInPlaceOpenabilityOfFileResource", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 317);
LABEL_19:

    goto LABEL_20;
  }

  if (fstat([v9 fileDescriptor], &v76) < 0 || fstatfs(objc_msgSend(v10, "fileDescriptor"), &v80) < 0)
  {
    v27 = __error();
    v28 = *MEMORY[0x1E696A798];
    v29 = 322;
LABEL_17:
    v30 = _LSMakeNSErrorImpl(v28, *v27, 0, "_LSStageOrConfirmInPlaceOpenabilityOfFileResource", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", v29);
LABEL_20:
    v32 = v30;
    v6 = 0;
    v33 = v30;
    v11 = v8;
    goto LABEL_21;
  }

  if (getattrlist(v80.f_mntonname, &v73, v75, 0x24uLL, 0x800u) < 0)
  {
    v27 = __error();
    v28 = *MEMORY[0x1E696A798];
    v29 = 327;
    goto LABEL_17;
  }

  if (fcntl([v10 fileDescriptor], 50, v79) == -1)
  {
    v27 = __error();
    v28 = *MEMORY[0x1E696A798];
    v29 = 338;
    goto LABEL_17;
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v79 isDirectory:(v76.st_mode & 0xF000) == 0x4000 relativeToURL:0];

  if (v80.f_flags)
  {
    goto LABEL_68;
  }

  if ((v75[10] & 1) == 0 || *v80.f_mntonname == 47)
  {
    if (*v80.f_mntonname != 47)
    {
      v57 = _LSDefaultLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&dword_18162D000, v57, OS_LOG_TYPE_DEFAULT, "Open of %@ from writable non-clone-supporting filesystem is unexpected.", buf, 0xCu);
      }

      if ((v76.st_mode & 0xF000) == 0x8000)
      {
        v83[0] = 0;
        copyProvidedResourceToStagingContainerRegularFile(v11, v10, v83, buf);
        v30 = v83[0];
        v6 = *buf;
        goto LABEL_74;
      }

      v83[0] = *MEMORY[0x1E696A278];
      *buf = @"Open of non-regular file from writable filesystem requires clone support";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v83 count:1];
      v30 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, v31, "_LSStageOrConfirmInPlaceOpenabilityOfFileResource", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 355);
      v8 = v11;
      goto LABEL_19;
    }

LABEL_68:
    operator new();
  }

  v12 = v11;
  v13 = v10;
  *buf = 0;
  v68 = v13;
  v14 = getFileProtectionValueForFileHandle(v13, buf);
  v15 = *buf;
  if (v14)
  {
    v66 = v14;
    v16 = +[LSOpenStagingDirectoryManager sharedServerInstance];
    v83[0] = v15;
    v67 = [v16 stagingDirectoryForCloningFileHandle:v13 error:v83];
    v62 = v83[0];

    if (v67)
    {
      v17 = [MEMORY[0x1E696AFB0] UUID];
      v18 = [v17 UUIDString];
      v65 = [v67 URLByAppendingPathComponent:v18];

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      v81 = *MEMORY[0x1E695DAF0];
      v82 = v66;
      v60 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v77 = v62;
      LOBYTE(v19) = [v19 createDirectoryAtURL:v65 withIntermediateDirectories:0 attributes:v20 error:&v77];
      v64 = v77;

      if (v19)
      {
        v21 = [v12 lastPathComponent];
        v22 = [v65 URLByAppendingPathComponent:v21];

        v61 = v65;
        v63 = v22;
        v59 = v68;
        LODWORD(v21) = [v59 fileDescriptor];
        v23 = v63;
        if (!fclonefileat(v21, -2, [v63 fileSystemRepresentation], 1u))
        {
          operator new();
        }

        v24 = __error();
        v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v24, 0, "stageResourceByCloningHandle", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 233);
        v26 = v25;

        v15 = v25;
        goto LABEL_73;
      }
    }

    else
    {
      v64 = v62;
    }

    v15 = v64;
  }

LABEL_73:
  v58 = v15;
  v6 = 0;

  v30 = v15;
LABEL_74:
  if (!v6)
  {
    v8 = v11;
    goto LABEL_20;
  }

  v33 = 0;
LABEL_21:

  v34 = v33;
  v35 = v34;
  if (v6)
  {
    v69 = v34;
    (*(*v6 + 2))(&v80, v6, &v69);
    v36 = v69;

    v35 = v36;
  }

  else
  {
    *&v80.f_bsize = 0;
    LOBYTE(v80.f_blocks) = 1;
  }

  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v70, &v80);
  if (LOBYTE(v80.f_blocks) == 1)
  {
  }

  if (!v6)
  {
LABEL_33:
    v39 = v35;
    v40 = v39;
    v41 = cf;
    if (cf != v39)
    {
      cf = v39;
      v39 = v41;
    }

    if (v39)
    {
      CFRelease(v39);
    }

    v6 = 0;
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_38;
  }

  if (v71 != 1)
  {
    (*(*v6 + 1))(v6);
    goto LABEL_33;
  }

  v37 = v6[1];

  if ((*(*v6 + 3))(v6))
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v5 = v37;
LABEL_39:
  v42 = *(a1 + 48);
  v43 = *(a1 + 56);
  if (v71)
  {
    v44 = v70;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  v46 = cf;
  cf = 0;
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = MDTCreateCopierWithSandboxExtensionAndReturnError(*MEMORY[0x1E695E480], v5, v42, v43, v44, v38, _LSCopierCallback, v4, &cf);
  if (!v47)
  {
LABEL_51:
    [(_LSOpenCopierContext *)v4 setError:cf];
    v47 = 0;
    v51 = 1;
    goto LABEL_52;
  }

  Current = CFRunLoopGetCurrent();
  if (MDTCopierScheduleWithRunLoop(v47, Current, @"LSOpenCallbackWaitMode"))
  {
    if (MDTCopierStart(v47))
    {
      CFRunLoopRunInMode(@"LSOpenCallbackWaitMode", 1.0e99, 1u);
      MDTCopierInvalidate(v47);
      if ([(_LSOpenCopierContext *)v4 callbackType]== 2)
      {
        v49 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "_LSCopyOrMoveFileResource_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 442);
        [(_LSOpenCopierContext *)v4 setError:v49];
      }
    }

    v50 = CFRunLoopGetCurrent();
    MDTCopierUnscheduleFromRunLoop(v47, v50, @"LSOpenCallbackWaitMode");
  }

  v51 = 0;
LABEL_52:
  v52 = *(a1 + 64);
  v53 = [(_LSOpenCopierContext *)v4 destURL];
  v54 = [(_LSOpenCopierContext *)v4 error];
  (*(v52 + 16))(v52, v53, v54);

  if (v71 == 1)
  {
  }

  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((v51 & 1) == 0)
  {
    CFRelease(v47);
  }

  objc_autoreleasePoolPop(v2);
  result = MEMORY[0x1865D7C50]();
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

@end