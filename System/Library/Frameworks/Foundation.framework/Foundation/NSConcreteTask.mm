@interface NSConcreteTask
- (BOOL)launchAndReturnError:(id *)a3;
- (BOOL)launchWithDictionary:(id)a3 error:(id *)a4;
- (BOOL)resume;
- (BOOL)suspend;
- (NSConcreteTask)init;
- (id)taskDictionary;
- (id)terminationHandler;
- (int)processIdentifier;
- (int)terminationStatus;
- (int64_t)_platformExitInformation;
- (int64_t)qualityOfService;
- (int64_t)suspendCount;
- (int64_t)terminationReason;
- (void)_setTerminationHandler:(id)a3;
- (void)_withTaskDictionary:(id)a3;
- (void)dealloc;
- (void)launch;
- (void)setEnvironment:(id)a3;
- (void)setQualityOfService:(int64_t)a3;
- (void)setStandardError:(id)a3;
- (void)setStandardInput:(id)a3;
- (void)setStandardOutput:(id)a3;
- (void)setStartsNewProcessGroup:(BOOL)a3;
- (void)setTaskDictionary:(id)a3;
- (void)waitUntilExit;
@end

@implementation NSConcreteTask

- (int64_t)qualityOfService
{
  os_unfair_lock_lock(&self->_lock);
  qos = self->_qos;
  if (!qos)
  {
    qos = -1;
  }

  v4 = qos;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)setQualityOfService:(int64_t)a3
{
  v3 = atomic_load(&self->__exitRunningInfo);
  if ((v3 & 0x100000000) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    if ((a3 + 1) > 0x22 || ((1 << (a3 + 1)) & 0x404040401) == 0)
    {
      LOBYTE(a3) = -1;
    }

    self->_qos = a3;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)terminationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_terminationHandler;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_setTerminationHandler:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  terminationHandler = self->_terminationHandler;
  if (terminationHandler != a3)
  {

    self->_terminationHandler = [a3 copy];
  }

  v6 = atomic_load(&self->__exitRunningInfo);
  if ((v6 & 0x300000000) == 0x100000000)
  {
    v7 = self->_terminationHandler;
    if (v7)
    {
      atomic_fetch_or(&self->__exitRunningInfo, 0x800000000uLL);
      v8 = qos_class_main();
      global_queue = dispatch_get_global_queue(v8, 2uLL);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__NSConcreteTask__setTerminationHandler___block_invoke;
      block[3] = &unk_1E69F3910;
      block[4] = self;
      block[5] = v7;
      dispatch_async(global_queue, block);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int)terminationStatus
{
  v2 = atomic_load(&self->__exitRunningInfo);
  if ((v2 & 0x100000000) == 0)
  {
    v7 = [NSString stringWithFormat:@"%@: task not launched", _NSMethodExceptionProem(self, a2)];
    goto LABEL_13;
  }

  if ((v2 & 0x200000000) != 0)
  {
    v7 = [NSString stringWithFormat:@"%@: task still running", _NSMethodExceptionProem(self, a2)];
LABEL_13:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  v3 = v2 & 0x7F;
  v4 = BYTE1(v2);
  if (v3)
  {
    v4 = 0;
  }

  if (v3 == 127 || v3 == 0)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_platformExitInformation
{
  v2 = atomic_load(&self->__exitRunningInfo);
  if ((v2 & 0x100000000) == 0)
  {
    v4 = [NSString stringWithFormat:@"%@: task not launched", _NSMethodExceptionProem(self, a2)];
    goto LABEL_6;
  }

  if ((v2 & 0x200000000) != 0)
  {
    v4 = [NSString stringWithFormat:@"%@: task still running", _NSMethodExceptionProem(self, a2)];
LABEL_6:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  return v2;
}

- (int64_t)terminationReason
{
  v2 = atomic_load(&self->__exitRunningInfo);
  if ((v2 & 0x100000000) == 0)
  {
    v6 = [NSString stringWithFormat:@"%@: task not launched", _NSMethodExceptionProem(self, a2)];
    goto LABEL_10;
  }

  if ((v2 & 0x200000000) != 0)
  {
    v6 = [NSString stringWithFormat:@"%@: task still running", _NSMethodExceptionProem(self, a2)];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  v3 = v2 & 0x7F;
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  if (v3 == 127)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)launch
{
  os_unfair_lock_lock(&self->_lock);
  dictionary = self->_dictionary;
  os_unfair_lock_unlock(&self->_lock);

  [(NSConcreteTask *)self launchWithDictionary:dictionary error:0];
}

- (BOOL)launchAndReturnError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  dictionary = self->_dictionary;
  os_unfair_lock_unlock(&self->_lock);
  [(NSMutableDictionary *)dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_NSTaskUseErrorsForRuntimeFailures"];

  return [(NSConcreteTask *)self launchWithDictionary:dictionary error:a3];
}

- (BOOL)launchWithDictionary:(id)a3 error:(id *)a4
{
  v112 = a4;
  v138 = *MEMORY[0x1E69E9840];
  v135 = 2;
  v134 = 0x100000000;
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"_NSTaskUseErrorsForRuntimeFailures", "BOOLValue"}];
  v114 = self;
  v7 = atomic_load(&self->__exitRunningInfo);
  if ((v7 & 0x100000000) == 0)
  {
    v109 = 56;
    v110 = v6;
    if (a3)
    {
      v111 = 8;
      os_unfair_lock_lock(v114 + 2);
      v113 = 16;
      v8 = *&v114[4]._os_unfair_lock_opaque;
      if (v8 == a3)
      {
        v9 = *&v114[4]._os_unfair_lock_opaque;
      }

      else
      {
        v9 = [a3 mutableCopyWithZone:0];
        *&v114[v113 / 4]._os_unfair_lock_opaque = v9;
        if (v8)
        {

          v9 = *&v114[v113 / 4]._os_unfair_lock_opaque;
        }
      }

      [v9 removeObjectForKey:@"_NSTaskTerminationStatus"];
      [*&v114[v113 / 4]._os_unfair_lock_opaque removeObjectForKey:@"_NSTaskHasBeenLaunched"];
      v11 = [objc_msgSend(*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:{@"_NSTaskExecutablePath", "stringByStandardizingPath"}];
      if (([v11 getFileSystemRepresentation:v136 maxLength:1024] & 1) == 0 || access(v136, 1))
      {
        if (!v110)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"launch path not accessible" userInfo:0]);
        }

        if (v11)
        {
          if (v112)
          {
            v132 = @"NSFilePath";
            v133 = v11;
            v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1]);
LABEL_19:
            v10 = 0;
            v13 = v111;
            *v112 = v12;
LABEL_187:
            os_unfair_lock_unlock((v114 + v13));
            return v10;
          }
        }

        else if (v112)
        {
          v12 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:4 userInfo:0];
          goto LABEL_19;
        }

LABEL_35:
        v10 = 0;
        v13 = v111;
        goto LABEL_187;
      }

      v14 = [objc_msgSend(*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:{@"_NSTaskDirectoryPath", "stringByStandardizingPath"}];
      if (v14 && ![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        if (!v110)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"working directory doesn't exist." userInfo:0]);
        }

        if (v112)
        {
          v130 = @"NSFilePath";
          v131 = v14;
          v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1]);
          goto LABEL_19;
        }

        goto LABEL_35;
      }

      v15 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskArgumentArray"];
      v16 = [v15 count];
      if (v16 > 4096)
      {
        v94 = [NSString stringWithFormat:@"too many arguments (%ld) -- limit is 4096", v16];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v94 userInfo:0]);
      }

      v107 = [v11 fileSystemRepresentation];
      v103 = &v99;
      MEMORY[0x1EEE9AC00](v107);
      v19 = (&v99 - ((v18 + 31) & 0xFFFFFFFFFFFFFFF0));
      if (v17 >= 0x200)
      {
        v20 = 512;
      }

      else
      {
        v20 = v17;
      }

      bzero(&v99 - ((v18 + 31) & 0xFFFFFFFFFFFFFFF0), v20);
      *v19 = v107;
      v105 = v19;
      if (v16 < 1)
      {
        v16 = 0;
      }

      else
      {
        v21 = 0;
        v22 = v19 + 1;
        do
        {
          v23 = [v15 objectAtIndex:v21];
          v24 = [v23 isEqual:&stru_1EEEFDF90];
          v25 = "";
          if ((v24 & 1) == 0)
          {
            v25 = [v23 fileSystemRepresentation];
          }

          v22[v21++] = v25;
        }

        while (v16 != v21);
        v19 = v105;
      }

      v19[v16 + 1] = 0;
      v104 = [v14 fileSystemRepresentation];
      v26 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskEnvironmentDictionary"];
      v27 = v26;
      if (v26)
      {
        if ([v26 count])
        {
          v28 = [v27 count];
          v106 = malloc_type_malloc(8 * v28 + 8, 0x10040436913F5uLL);
          v29 = [v27 keyEnumerator];
          if (v28 < 1)
          {
            v33 = 0;
          }

          else
          {
            v30 = v29;
            v31 = v106;
            v108 = v28;
            do
            {
              v32 = [v30 nextObject];
              *v31++ = -[NSString fileSystemRepresentation](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", v32, [v27 objectForKey:v32]), "fileSystemRepresentation");
              --v28;
            }

            while (v28);
            v33 = v108;
          }

          v106[v33] = 0;
          v34 = 1;
        }

        else
        {
          v34 = 0;
          v106 = 0;
        }
      }

      else
      {
        v34 = 0;
        v106 = *_NSGetEnviron();
      }

      v137 = 0;
      memset(v136, 0, sizeof(v136));
      v35 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskPreferredArchitectureArray"];
      v36 = v35;
      v102 = v34;
      if (v35 && (v128 = 0u, v129 = 0u, v126 = 0u, v127 = 0u, (v37 = [v35 countByEnumeratingWithState:&v126 objects:v125 count:16]) != 0))
      {
        v38 = 0;
        v39 = *v127;
        while (2)
        {
          v40 = 0;
          v41 = (9 - v38);
          v42 = &v136[v38];
          do
          {
            if (*v127 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v42[v40] = [*(*(&v126 + 1) + 8 * v40) intValue];
            if (v41 == v40)
            {
              v38 = 10;
              goto LABEL_59;
            }

            ++v40;
            ++v38;
          }

          while (v37 != v40);
          v37 = [v36 countByEnumeratingWithState:&v126 objects:v125 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v38 = 0;
      }

LABEL_59:
      v43 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskInputFileHandle"];
      if (v43)
      {
        if (objc_opt_isKindOfClass())
        {
          v44 = [v43 fileHandleForReading];
          v45 = [v44 fileDescriptor];
        }

        else
        {
          v45 = [v43 fileDescriptor];
          v44 = 0;
        }

        LODWORD(v134) = v45;
      }

      else
      {
        v44 = 0;
        LODWORD(v134) = -1;
      }

      v46 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskOutputFileHandle"];
      if (v46)
      {
        if (objc_opt_isKindOfClass())
        {
          v47 = [v46 fileHandleForWriting];
          v48 = [v47 fileDescriptor];
        }

        else
        {
          v48 = [v46 fileDescriptor];
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
        v48 = -1;
      }

      HIDWORD(v134) = v48;
      v49 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskDiagnosticFileHandle"];
      if (v49)
      {
        if (objc_opt_isKindOfClass())
        {
          v49 = [v49 fileHandleForWriting];
          v50 = [v49 fileDescriptor];
        }

        else
        {
          v50 = [v49 fileDescriptor];
          v49 = 0;
        }
      }

      else
      {
        v50 = -1;
      }

      v135 = v50;
      v101 = [*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskLaunchRequirementData"];
      LODWORD(v108) = open("/dev/null", 2, 0);
      v124 = -1;
      v122 = 0;
      v123 = -1;
      posix_spawn_file_actions_init(&v122);
      if (v104)
      {
        v51 = MEMORY[0x1865D1900](&v122, v104);
        if (v51)
        {
          if (!v110)
          {
            v95 = [NSString stringWithFormat:@"Failed to set working directory to %s with error %d", v104, v51];
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v95 userInfo:0]);
          }

          if (v112)
          {
            v52 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:v51 userInfo:0];
            goto LABEL_142;
          }

LABEL_185:
          v10 = 0;
LABEL_186:
          v13 = v111;
          goto LABEL_187;
        }
      }

      v100 = v49;
      v104 = v47;
      v53 = 0;
      while (1)
      {
        v54 = *(&v134 + v53);
        if (v53 == v54)
        {
          v55 = dup(*(&v134 + v53));
          if (v55 == -1)
          {
            *(&v134 + v53) = -1;
LABEL_87:
            v56 = posix_spawn_file_actions_adddup2(&v122, v108, v53);
            v54 = 0xFFFFFFFFLL;
            goto LABEL_88;
          }

          *(&v123 + v53) = v55;
          v56 = posix_spawn_file_actions_adddup2(&v122, v55, v53);
          if (v56)
          {
            goto LABEL_124;
          }
        }

        if (v54 == -1)
        {
          goto LABEL_87;
        }

        v56 = posix_spawn_file_actions_adddup2(&v122, v54, v53);
LABEL_88:
        if (v56)
        {
LABEL_124:
          v67 = 0;
          v68 = v104;
          v69 = v100;
          do
          {
            v70 = *(&v123 + v67);
            if (v70 != -1)
            {
              close(v70);
            }

            v67 += 4;
          }

          while (v67 != 12);
          if (v44)
          {
            [v44 closeFile];
          }

          if (v68)
          {
            [v68 closeFile];
          }

          if (v69 && v69 != v68)
          {
            [v69 closeFile];
          }

          posix_spawn_file_actions_destroy(&v122);
          if (v108 != -1)
          {
            close(v108);
          }

          if (v102)
          {
            free(v106);
          }

          if (!v110)
          {
            v96 = [NSString stringWithFormat:@"Failed to set posix_spawn_file_actions for fd %d at index %d with errno %d", v54, v53, v56];
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v96 userInfo:0]);
          }

          if (v112)
          {
            v52 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:v56 userInfo:0];
            goto LABEL_142;
          }

          goto LABEL_185;
        }

        if (++v53 == 3)
        {
          v121 = 0;
          posix_spawnattr_init(&v121);
          v57 = v104;
          v58 = v100;
          v120 = 0;
          v119 = -1;
          posix_spawnattr_setsigmask(&v121, &v120);
          posix_spawnattr_setsigdefault(&v121, &v119);
          if ([*&v114[v113 / 4]._os_unfair_lock_opaque objectForKey:@"_NSTaskNoNewProcessGroup"])
          {
            v59 = 16396;
          }

          else
          {
            v59 = 16398;
          }

          v60 = posix_spawnattr_setflags(&v121, v59);
          v61 = v60;
          os_unfair_lock_opaque_low = LOBYTE(v114[16]._os_unfair_lock_opaque);
          v63 = os_unfair_lock_opaque_low == QOS_CLASS_BACKGROUND || os_unfair_lock_opaque_low == QOS_CLASS_UTILITY;
          if (v63 && !v60)
          {
            v61 = posix_spawnattr_set_qos_class_np(&v121, os_unfair_lock_opaque_low);
          }

          if (v38 >= 1 && !v61)
          {
            v118 = 0;
            v61 = posix_spawnattr_setbinpref_np(&v121, v38, v136, &v118);
          }

          if (v101)
          {
            v64 = [v101 bytes];
            amfi_launch_constraint_set_spawnattr(&v121, v64, [v101 length]);
          }

          if (v61)
          {
            for (i = 0; i != 12; i += 4)
            {
              v66 = *(&v123 + i);
              if (v66 != -1)
              {
                close(v66);
              }
            }

            if (v44)
            {
              [v44 closeFile];
            }

            if (v57)
            {
              [v57 closeFile];
            }

            if (v58 && v58 != v57)
            {
              [v58 closeFile];
            }

            posix_spawnattr_destroy(&v121);
            posix_spawn_file_actions_destroy(&v122);
            if (v108 != -1)
            {
              close(v108);
            }

            if (v102)
            {
              free(v106);
            }

            if (!v110)
            {
              v97 = [NSString stringWithFormat:@"Failed to setup posix spawn attributes with error %d", v61];
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v97 userInfo:0]);
            }

            if (v112)
            {
              v52 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:v61 userInfo:0];
              goto LABEL_142;
            }

            goto LABEL_185;
          }

          v71 = 11;
          while (1)
          {
            v72 = posix_spawn(&v114[12], v107, &v122, &v121, v105, v106);
            if (v72 != 35)
            {
              v73 = v44;
              goto LABEL_150;
            }

            if (!--v71)
            {
              break;
            }

            if (nanosleep(&launchWithDictionary_error__spawnSleep, 0))
            {
              v73 = v44;
              v72 = *__error();
              goto LABEL_150;
            }
          }

          __PTHREAD_SPAWN_EAGAIN_OVERLIMIT__();
          v73 = v44;
          v72 = 35;
LABEL_150:
          for (j = 0; j != 12; j += 4)
          {
            v75 = *(&v123 + j);
            if (v75 != -1)
            {
              close(v75);
            }
          }

          if (!v72)
          {
            v77 = v113;
            v76 = v114;
            atomic_fetch_or(&v114[v109 / 4], 0x300000000uLL);
            v78 = *(&v76->_os_unfair_lock_opaque + v77);
            if (v78 == a3)
            {
              v79 = v114;
              *(&v79->_os_unfair_lock_opaque + v77) = [*(&v76->_os_unfair_lock_opaque + v77) mutableCopyWithZone:0];

              v78 = *(&v79->_os_unfair_lock_opaque + v77);
            }

            [v78 setObject:@"YES" forKey:@"_NSTaskHasBeenLaunched"];
            if (v73)
            {
              [v73 closeFile];
            }

            if (v57)
            {
              [v57 closeFile];
            }

            if (v58 && v58 != v57)
            {
              [v58 closeFile];
            }

            Current = CFRunLoopGetCurrent();
            v81 = CFRetain(Current);
            memset(&v117.retain, 0, 64);
            v117.version = 0;
            v117.info = v114;
            v82 = *MEMORY[0x1E695E4A8];
            v83 = CFRunLoopSourceCreate(*MEMORY[0x1E695E4A8], 0, &v117);
            CFRunLoopAddSource(v81, v83, *MEMORY[0x1E695E8E0]);
            Mutable = _CFGetTSD();
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(v82, 1, 0);
              _CFSetTSD();
            }

            CFArrayAppendValue(Mutable, v114);
            os_unfair_lock_opaque = v114[12]._os_unfair_lock_opaque;
            v86 = qos_class_main();
            global_queue = dispatch_get_global_queue(v86, 2uLL);
            v88 = dispatch_source_create(MEMORY[0x1E69E96F0], os_unfair_lock_opaque, 0x80000000uLL, global_queue);
            v116[0] = MEMORY[0x1E69E9820];
            v116[1] = 3221225472;
            v116[2] = __45__NSConcreteTask_launchWithDictionary_error___block_invoke;
            v116[3] = &unk_1E69F2C00;
            v116[4] = v88;
            dispatch_source_set_cancel_handler(v88, v116);
            v115[0] = MEMORY[0x1E69E9820];
            v115[1] = 3221225472;
            v115[2] = __45__NSConcreteTask_launchWithDictionary_error___block_invoke_2;
            v115[3] = &unk_1E69F6380;
            v89 = v114;
            v115[4] = v114;
            v115[5] = v114;
            v115[6] = v88;
            v115[7] = v81;
            v115[8] = v83;
            dispatch_source_set_event_handler(v88, v115);
            *&v89[8]._os_unfair_lock_opaque = v88;
            dispatch_resume(v88);
            posix_spawnattr_destroy(&v121);
            posix_spawn_file_actions_destroy(&v122);
            close(v108);
            if (v102)
            {
              free(v106);
            }

            v10 = 1;
            goto LABEL_186;
          }

          if (v73)
          {
            [v73 closeFile];
          }

          if (v57)
          {
            [v57 closeFile];
          }

          if (v58 && v58 != v57)
          {
            [v58 closeFile];
          }

          posix_spawnattr_destroy(&v121);
          posix_spawn_file_actions_destroy(&v122);
          if (v108 != -1)
          {
            close(v108);
          }

          if (v102)
          {
            free(v106);
          }

          if (!v110)
          {
            if (v72 != 86 || [(NSString *)[+[NSBundle bundleIdentifier] rangeOfString:@"com.mackiev." mainBundle]!= 0x7FFFFFFFFFFFFFFFLL]
            {
              v98 = [NSString stringWithFormat:@"Couldn't posix_spawn: error %d", v72];
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v98 userInfo:0]);
            }

            goto LABEL_185;
          }

          if (!v112)
          {
            goto LABEL_185;
          }

          v52 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:v72 userInfo:0];
LABEL_142:
          v10 = 0;
          *v112 = v52;
          goto LABEL_186;
        }
      }
    }

    v91 = MEMORY[0x1E695DF30];
    v92 = *MEMORY[0x1E695D940];
    v93 = @"need a dictionary";
LABEL_191:
    objc_exception_throw([v91 exceptionWithName:v92 reason:v93 userInfo:0]);
  }

  if (!v6)
  {
    v91 = MEMORY[0x1E695DF30];
    v92 = *MEMORY[0x1E695D940];
    v93 = @"task already launched";
    goto LABEL_191;
  }

  v10 = 0;
  if (v112)
  {
    *v112 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3587 userInfo:0];
  }

  return v10;
}

void __45__NSConcreteTask_launchWithDictionary_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 2);
  *(*(a1 + 40) + 32) = 0;
  dispatch_source_cancel(*(a1 + 48));
  v13 = 0;
  do
  {
    v3 = waitpid(*(*(a1 + 40) + 48), &v13, 0);
  }

  while (v3 < 0 && *__error() == 4);
  v4 = v13;
  if (v3 < 0)
  {
    v4 = -1;
  }

  atomic_fetch_or((*(a1 + 40) + 56), v4);
  atomic_fetch_and((*(a1 + 40) + 56), 0xFFFFFFFDFFFFFFFFLL);
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  if (v6)
  {
    atomic_fetch_or((v5 + 56), 0x800000000uLL);
    v7 = qos_class_main();
    global_queue = dispatch_get_global_queue(v7, 2uLL);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__NSConcreteTask_launchWithDictionary_error___block_invoke_3;
    block[3] = &unk_1E69F3910;
    block[4] = *(a1 + 40);
    block[5] = v6;
    dispatch_async(global_queue, block);
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = *MEMORY[0x1E695E8D0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__NSConcreteTask_launchWithDictionary_error___block_invoke_4;
    v11[3] = &unk_1E69F2C00;
    v11[4] = v5;
    CFRunLoopPerformBlock(v9, v10, v11);
  }

  CFRunLoopRemoveSource(*(a1 + 56), *(a1 + 64), *MEMORY[0x1E695E8E0]);
  CFRunLoopWakeUp(*(a1 + 56));
  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  os_unfair_lock_unlock(v2 + 2);
}

uint64_t __45__NSConcreteTask_launchWithDictionary_error___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _setTerminationHandler:0];
}

uint64_t __45__NSConcreteTask_launchWithDictionary_error___block_invoke_4(uint64_t result)
{
  v2 = atomic_load((*(result + 32) + 56));
  if ((v2 & 0xC00000000) == 0)
  {
    v3 = result;
    atomic_fetch_or((*(result + 32) + 56), 0x400000000uLL);
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = *(v3 + 32);

    return [(NSNotificationCenter *)v4 postNotificationName:@"NSTaskDidTerminateNotification" object:v5 userInfo:0];
  }

  return result;
}

- (void)waitUntilExit
{
  v16 = *MEMORY[0x1E69E9840];
  _CFAutoreleasePoolPush();
  v3 = _CFGetTSD();
  if (v3)
  {
    v4 = v3;
    v17.length = CFArrayGetCount(v3);
    v17.location = 0;
    v5 = CFArrayContainsValue(v4, v17, self) != 0;
  }

  else
  {
    v5 = 0;
  }

  memset(&context.retain, 0, 64);
  context.version = 0;
  context.info = self;
  Current = CFRunLoopGetCurrent();
  v7 = CFRunLoopSourceCreate(*MEMORY[0x1E695E4A8], 0, &context);
  v8 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v7, *MEMORY[0x1E695E8E0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __31__NSConcreteTask_waitUntilExit__block_invoke;
  v12 = &unk_1E69F63A8;
  v13 = self;
  v14 = v5;
  v9 = atomic_load(&self->__exitRunningInfo);
  if ((v9 & 0x200000000) != 0 || (v9 & 0x400000000) == 0 && (v9 & 0x800000000) == 0 && v14)
  {
    do
    {
      CFRunLoopRunInMode(v8, 0.0625, 1u);
    }

    while ((v11(v10) & 1) != 0);
  }

  CFRunLoopRemoveSource(Current, v7, v8);
  CFRelease(v7);
  _CFAutoreleasePoolPop();
}

uint64_t __31__NSConcreteTask_waitUntilExit__block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 0x200000000) != 0)
  {
    return 1;
  }

  if ((v1 & 0x400000000) != 0)
  {
    return 0;
  }

  return ((v1 & 0x800000000) == 0) & *(a1 + 40);
}

- (void)_withTaskDictionary:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_dictionary)
  {
    self->_dictionary = +[NSTask currentTaskDictionary];
  }

  (*(a3 + 2))(a3);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEnvironment:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
  }

  COPY_SETTER_IMPL(self, v3, @"_NSTaskEnvironmentDictionary", 0);
}

- (void)setStandardInput:(id)a3
{
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    NOCOPY_SETTER_IMPL(self, a3, @"_NSTaskInputFileHandle");
  }

  else
  {
    qword_1EA7BB378 = "Standard input can only be an NSFileHandle or NSPipe";
    __break(1u);
  }
}

- (void)setStandardOutput:(id)a3
{
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    NOCOPY_SETTER_IMPL(self, a3, @"_NSTaskOutputFileHandle");
  }

  else
  {
    qword_1EA7BB378 = "Standard output can only be an NSFileHandle or NSPipe";
    __break(1u);
  }
}

- (void)setStandardError:(id)a3
{
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    NOCOPY_SETTER_IMPL(self, a3, @"_NSTaskDiagnosticFileHandle");
  }

  else
  {
    qword_1EA7BB378 = "Standard error can only be an NSFileHandle or NSPipe";
    __break(1u);
  }
}

- (void)setTaskDictionary:(id)a3
{
  v3 = atomic_load(&self->__exitRunningInfo);
  if ((v3 & 0x100000000) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"task already launched" userInfo:0]);
  }

  os_unfair_lock_lock(&self->_lock);
  dictionary = self->_dictionary;
  self->_dictionary = [a3 mutableCopyWithZone:0];
  if (dictionary)
  {
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)taskDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__NSConcreteTask_taskDictionary__block_invoke;
  v4[3] = &unk_1E69F63D0;
  v4[4] = self;
  v4[5] = &v5;
  [(NSConcreteTask *)self _withTaskDictionary:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __32__NSConcreteTask_taskDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = atomic_load((*(a1 + 32) + 56));
  if ((v3 & 0x100000000) != 0)
  {
    result = [a2 mutableCopyWithZone:0];
  }

  else
  {
    result = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)suspend
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  return 0;
}

- (BOOL)resume
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  return 0;
}

- (int64_t)suspendCount
{
  os_unfair_lock_lock(&self->_lock);
  suspendCount = self->_suspendCount;
  os_unfair_lock_unlock(&self->_lock);
  return suspendCount;
}

- (NSConcreteTask)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSConcreteTask;
  result = [(NSTask *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    atomic_store(0, &result->_isSpawnedProcessDisclaimed);
  }

  return result;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSConcreteTask *)self standardInput];
  if (objc_opt_isKindOfClass())
  {
    [v3 _closeOnDealloc];
  }

  v4 = [(NSConcreteTask *)self standardOutput];
  if (objc_opt_isKindOfClass())
  {
    [v4 _closeOnDealloc];
  }

  v5 = [(NSConcreteTask *)self standardError];
  if (objc_opt_isKindOfClass())
  {
    [v5 _closeOnDealloc];
  }

  dsrc = self->_dsrc;
  if (dsrc)
  {
    dispatch_source_cancel(dsrc);
    self->_dsrc = 0;
  }

  v7.receiver = self;
  v7.super_class = NSConcreteTask;
  [(NSConcreteTask *)&v7 dealloc];
}

- (int)processIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  pid = self->_pid;
  os_unfair_lock_unlock(&self->_lock);
  return pid;
}

- (void)setStartsNewProcessGroup:(BOOL)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NSConcreteTask_setStartsNewProcessGroup___block_invoke;
  v3[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  v4 = a3;
  [(NSConcreteTask *)self _withTaskDictionary:v3];
}

uint64_t __43__NSConcreteTask_setStartsNewProcessGroup___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {

    return [a2 removeObjectForKey:@"_NSTaskNoNewProcessGroup"];
  }

  else
  {
    v4 = [NSNumber numberWithBool:1];

    return [a2 setObject:v4 forKey:@"_NSTaskNoNewProcessGroup"];
  }
}

@end