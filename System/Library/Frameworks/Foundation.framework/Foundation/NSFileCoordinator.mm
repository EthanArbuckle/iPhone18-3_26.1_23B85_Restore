@interface NSFileCoordinator
+ (BOOL)_itemHasPresentersAtURL:(id)l;
+ (BOOL)_skipCoordinationWork;
+ (NSArray)filePresenters;
+ (id)_canonicalIntentsForIntents:(id)intents;
+ (id)_canonicalURLForURL:(id)l modifyingReadingOptions:(unint64_t *)options removedResolveFlags:(unsigned int *)flags;
+ (id)_canonicalURLsForURLs:(id)ls;
+ (id)_createConnectionToFileAccessArbiterForQueue:(id)queue;
+ (id)_createConnectionToProgressRegistrar;
+ (id)_createIdentifierForNewClaim;
+ (id)_endpointForInProcessFileCoordinationServer;
+ (id)_fileAccessArbiterInterface;
+ (id)_filePresenterInterface;
+ (id)_fileProviderInterface;
+ (id)_fileProviders;
+ (id)_nextClaimIdentifier;
+ (id)_observedUbiquityAttributesForPresenterWithID:(id)d;
+ (id)_reconstructedURLForURL:(id)l resolveFlags:(unsigned int)flags;
+ (int)_processIdentifierForID:(id)d;
+ (unint64_t)_responsesForPresenter:(id)presenter;
+ (unsigned)_kernelMaterializationOperation;
+ (void)__itemAtURL:(id)l didChangeUbiquityWithPurposeID:(id)d;
+ (void)__itemAtURL:(id)l didChangeWithPurposeID:(id)d;
+ (void)__itemAtURL:(id)l didDisappearWithPurposeID:(id)d;
+ (void)__itemAtURL:(id)l didDisconnectWithPurposeID:(id)d;
+ (void)__itemAtURL:(id)l didGainVersionWithClientID:(id)d name:(id)name purposeID:(id)iD;
+ (void)__itemAtURL:(id)l didLoseVersionWithClientID:(id)d name:(id)name purposeID:(id)iD;
+ (void)__itemAtURL:(id)l didMoveToURL:(id)rL purposeID:(id)d;
+ (void)__itemAtURL:(id)l didReconnectWithPurposeID:(id)d;
+ (void)__itemAtURL:(id)l didResolveConflictVersionWithClientID:(id)d name:(id)name purposeID:(id)iD;
+ (void)_accessPresenterInfoUsingBlock:(id)block;
+ (void)_addFileProvider:(id)provider completionHandler:(id)handler;
+ (void)_addProcessIdentifier:(int)identifier observedUbiquityAttributes:(id)attributes forID:(id)d;
+ (void)_adoptFCDEndpointForTest:(id)test;
+ (void)_getDebugInfoWithCompletionHandler:(id)handler;
+ (void)_performBarrier;
+ (void)_performBarrierAsync:(id)async;
+ (void)_removeFileProvider:(id)provider;
+ (void)_removeInfoForID:(id)d;
+ (void)_setAutomaticFileProviderReregistrationDisabled:(BOOL)disabled;
+ (void)_setCurrentClaimPurposeIdentifier:(id)identifier;
+ (void)_setKernelMaterializationInfo:(id)info;
+ (void)_setNextClaimIdentifier:(id)identifier;
+ (void)_startInProcessFileCoordinationAndProgressServers;
+ (void)_stopInProcessFileCoordinationAndProgressServers;
+ (void)addFilePresenter:(id)filePresenter;
+ (void)removeFilePresenter:(id)filePresenter;
- (BOOL)_isValidUbiquityAttribute:(id)attribute;
- (NSFileCoordinator)initWithFilePresenter:(id)filePresenterOrNil;
- (NSString)purposeIdentifier;
- (id)_willStartWriteWithIntents:(id)intents async:(BOOL)async;
- (id)retainAccess;
- (void)__coordinateReadingItemAtURL:(id)l options:(unint64_t)options purposeID:(id)d byAccessor:(id)accessor;
- (void)__coordinateReadingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 purposeID:(id)d byAccessor:(id)accessor;
- (void)__coordinateWritingItemAtURL:(id)l options:(unint64_t)options purposeID:(id)d byAccessor:(id)accessor;
- (void)__coordinateWritingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 purposeID:(id)d byAccessor:(id)accessor;
- (void)__prepareForReadingItemsAtURLs:(id)ls options:(unint64_t)options writingItemsAtURLs:(id)rLs options:(unint64_t)a6 byAccessor:(id)accessor;
- (void)_coordinateAccessWithIntents:(id)intents queue:(id)queue byAccessor:(id)accessor;
- (void)_coordinateReadingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor;
- (void)_coordinateReadingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 error:(id *)error byAccessor:(id)accessor;
- (void)_coordinateWritingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor;
- (void)_coordinateWritingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 error:(id *)error byAccessor:(id)accessor;
- (void)_didEndWrite:(id)write;
- (void)_forgetAccessClaimForID:(id)d;
- (void)_invokeAccessor:(id)accessor thenCompletionHandler:(id)handler;
- (void)_itemAtURL:(id)l didMoveToURL:(id)rL;
- (void)_itemDidChangeAtURL:(id)l;
- (void)_itemDidDisappearAtURL:(id)l;
- (void)_requestAccessClaim:(id)claim withProcedure:(id)procedure;
- (void)_setFileProvider:(id)provider;
- (void)_setPurposeIdentifier:(id)identifier;
- (void)_ubiquityDidChangeForItemAtURL:(id)l;
- (void)_withAccessArbiter:(id)arbiter invokeAccessor:(id)accessor orDont:(BOOL)dont andRelinquishAccessClaim:(id)claim;
- (void)cancel;
- (void)coordinateAccessWithIntents:(NSArray *)intents queue:(NSOperationQueue *)queue byAccessor:(void *)accessor;
- (void)coordinateReadingItemAtURL:(NSURL *)readingURL options:(NSFileCoordinatorReadingOptions)readingOptions writingItemAtURL:(NSURL *)writingURL options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError *)outError byAccessor:(void *)readerWriter;
- (void)coordinateReadingItemAtURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options error:(NSError *)outError byAccessor:(void *)reader;
- (void)coordinateWritingItemAtURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options error:(NSError *)outError byAccessor:(void *)writer;
- (void)coordinateWritingItemAtURL:(NSURL *)url1 options:(NSFileCoordinatorWritingOptions)options1 writingItemAtURL:(NSURL *)url2 options:(NSFileCoordinatorWritingOptions)options2 error:(NSError *)outError byAccessor:(void *)writer;
- (void)dealloc;
- (void)itemAtURL:(NSURL *)oldURL didMoveToURL:(NSURL *)newURL;
- (void)itemAtURL:(NSURL *)oldURL willMoveToURL:(NSURL *)newURL;
- (void)itemAtURL:(NSURL *)url didChangeUbiquityAttributes:(NSSet *)attributes;
- (void)prepareForReadingItemsAtURLs:(NSArray *)readingURLs options:(NSFileCoordinatorReadingOptions)readingOptions writingItemsAtURLs:(NSArray *)writingURLs options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError *)outError byAccessor:(void *)batchAccessor;
- (void)setPurposeIdentifier:(NSString *)purposeIdentifier;
- (void)sharingDidChangeForItemAtURL:(id)l;
@end

@implementation NSFileCoordinator

+ (BOOL)_skipCoordinationWork
{
  if (qword_1ED440138 != -1)
  {
    dispatch_once(&qword_1ED440138, &__block_literal_global_81_0);
  }

  return _MergedGlobals_147;
}

void __53__NSFileCoordinator_NSPrivate___skipCoordinationWork__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) != 0 || getenv("NSDisableFileCoordination") != 0;
  _MergedGlobals_147 = v1;
  objc_autoreleasePoolPop(v0);
  if (_MergedGlobals_147 == 1)
  {
    NSLog(@"NSFileCoordinator is doing nothing.");
  }
}

+ (id)_fileAccessArbiterInterface
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__NSFileCoordinator_NSInternal___fileAccessArbiterInterface__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED440158 != -1)
  {
    dispatch_once(&qword_1ED440158, v3);
  }

  return qword_1ED440160;
}

uint64_t __60__NSFileCoordinator_NSInternal___fileAccessArbiterInterface__block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_self();
  v14[1] = objc_opt_self();
  v14[2] = objc_opt_self();
  v3 = [v2 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 3)}];
  v4 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_self();
  v13[1] = objc_opt_self();
  v5 = [v4 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 2)}];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_self();
  v12[1] = objc_opt_self();
  v7 = [v6 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)}];
  qword_1ED440160 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF8E0E8];
  [qword_1ED440160 setClasses:v3 forSelector:sel_grantAccessClaim_withReply_ argumentIndex:0 ofReply:1];
  [qword_1ED440160 setClasses:v3 forSelector:sel_grantAccessClaim_withReply_ argumentIndex:1 ofReply:1];
  [qword_1ED440160 setClasses:v5 forSelector:sel_grantAccessClaim_withReply_ argumentIndex:2 ofReply:1];
  [qword_1ED440160 setClasses:v7 forSelector:sel_prepareToArbitrateForURLs_ argumentIndex:0 ofReply:0];
  [qword_1ED440160 setInterface:objc_msgSend(*(a1 + 32) forSelector:"_filePresenterInterface") argumentIndex:sel_addPresenter_withID_fileURL_lastPresentedItemEventIdentifier_ubiquityAttributes_options_responses_ ofReply:{0, 0}];
  [qword_1ED440160 setInterface:objc_msgSend(*(a1 + 32) forSelector:"_fileProviderInterface") argumentIndex:sel_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply_ ofReply:{0, 0}];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0, v12[0]}];
  [qword_1ED440160 setClasses:v10 forSelector:sel_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL_ argumentIndex:1 ofReply:0];
  return [qword_1ED440160 setClasses:v10 forSelector:sel_addPresenter_withID_fileURL_lastPresentedItemEventIdentifier_ubiquityAttributes_options_responses_ argumentIndex:4 ofReply:0];
}

+ (id)_filePresenterInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF8EE90];
  [(NSXPCInterface *)v5 setClasses:v4 forSelector:sel_observeChangeOfUbiquityAttributes_ argumentIndex:0 ofReply:0];
  return v5;
}

+ (id)_fileProviderInterface
{
  if (qword_1ED440148 != -1)
  {
    dispatch_once(&qword_1ED440148, &__block_literal_global_369);
  }

  return qword_1ED440150;
}

NSXPCInterface *__55__NSFileCoordinator_NSInternal___fileProviderInterface__block_invoke()
{
  result = [NSXPCInterface interfaceWithProtocol:&unk_1EEF8F6E0];
  qword_1ED440150 = result;
  return result;
}

+ (id)_createIdentifierForNewClaim
{
  TSD = NSFileCoordinatorGetTSD();
  v3 = *(TSD + 32);
  if (v3)
  {
    *(TSD + 32) = 0;
    return v3;
  }

  else
  {

    return __CFCreateUUIDString();
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileCoordinator;
  [(NSFileCoordinator *)&v3 dealloc];
}

+ (id)_createConnectionToProgressRegistrar
{
  v2 = qword_1ED440178;
  v3 = [NSXPCConnection alloc];
  v4 = v3;
  if (v2)
  {
    endpoint = [qword_1ED440178 endpoint];

    return [(NSXPCConnection *)v4 initWithListenerEndpoint:endpoint];
  }

  else
  {

    return [(NSXPCConnection *)v3 initWithMachServiceName:@"com.apple.ProgressReporting" options:0];
  }
}

+ (void)addFilePresenter:(id)filePresenter
{
  v4 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v4 addFilePresenter:filePresenter];
}

+ (void)removeFilePresenter:(id)filePresenter
{
  v4 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v4 removeFilePresenter:filePresenter];
}

+ (NSArray)filePresenters
{
  v2 = NSFileCoordinatorSharedAccessArbiter();

  return [(NSFileAccessArbiterProxy *)v2 filePresenters];
}

- (NSFileCoordinator)initWithFilePresenter:(id)filePresenterOrNil
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileCoordinator;
  v4 = [(NSFileCoordinator *)&v8 init];
  if (v4)
  {
    v4->_accessArbiter = NSFileCoordinatorSharedAccessArbiter();
    v5 = filePresenterOrNil;
    v4->_fileReactor = v5;
    if (!v4->_purposeID)
    {
      if (v5)
      {
        v4->_purposeID = [objc_msgSend(v4->_accessArbiter idForFileReactor:{v5), "copy"}];
        [(NSFileCoordinator *)v4 _lockdownPurposeIdentifier];
      }

      else
      {
        v6 = CFUUIDCreate(0);
        v4->_purposeID = CFUUIDCreateString(0, v6);
        CFRelease(v6);
      }
    }

    v4->_recentFilePresenterURL = [objc_msgSend(filePresenterOrNil "presentedItemURL")];
  }

  return v4;
}

- (void)setPurposeIdentifier:(NSString *)purposeIdentifier
{
  if ([(NSFileCoordinator *)self _purposeIdentifierLockedDown])
  {
    v6 = [NSString stringWithFormat:@"%@: A purpose identifier can't be set more than once.", _NSMethodExceptionProem(self, a2)];
    v7 = MEMORY[0x1E695DF30];
    v8 = MEMORY[0x1E695D920];
    goto LABEL_8;
  }

  if (![(NSString *)purposeIdentifier length])
  {
    v6 = [NSString stringWithFormat:@"%@: A nil or zero-length purpose identifier is not allowed.", _NSMethodExceptionProem(self, a2)];
    v7 = MEMORY[0x1E695DF30];
    v8 = MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v7 exceptionWithName:*v8 reason:v6 userInfo:0]);
  }

  [(NSFileCoordinator *)self _setPurposeIdentifier:purposeIdentifier];
}

- (NSString)purposeIdentifier
{
  v2 = self->_purposeID;

  return v2;
}

+ (id)_canonicalURLForURL:(id)l modifyingReadingOptions:(unint64_t *)options removedResolveFlags:(unsigned int *)flags
{
  lCopy = l;
  _resolveFlags = [l _resolveFlags];
  if (_resolveFlags)
  {
    lCopy = [lCopy _URLByRemovingResolveFlags];
    if (options)
    {
      if (_resolveFlags)
      {
        *options &= ~2uLL;
      }
    }
  }

  if (flags)
  {
    *flags = _resolveFlags;
  }

  return lCopy;
}

+ (id)_reconstructedURLForURL:(id)l resolveFlags:(unsigned int)flags
{
  result = l;
  if (l)
  {
    if (flags)
    {
      return [l _URLByInsertingResolveFlags:*&flags];
    }
  }

  return result;
}

+ (id)_canonicalURLsForURLs:(id)ls
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(ls, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [ls countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(ls);
        }

        [v4 addObject:{+[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", *(*(&v11 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [ls countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)_canonicalIntentsForIntents:(id)intents
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(intents, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [intents countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(intents);
        }

        [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "canonicalIntent")}];
      }

      while (v6 != v8);
      v6 = [intents countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_invokeAccessor:(id)accessor thenCompletionHandler:(id)handler
{
  TSD = NSFileCoordinatorGetTSD();
  v8 = *TSD;
  *TSD = self;
  v9 = [NSFileCoordinatorAccessorBlockCompletion completionWithBlock:handler];
  TSD[1] = v9;
  (*(accessor + 2))(accessor);
  *TSD = v8;
  [(NSFileCoordinatorAccessorBlockCompletion *)v9 decrement];
  TSD[1] = 0;
}

- (void)coordinateReadingItemAtURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options error:(NSError *)outError byAccessor:(void *)reader
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NSFileCoordinator_coordinateReadingItemAtURL_options_error_byAccessor___block_invoke;
  v6[3] = &unk_1E69F77D8;
  v6[4] = self;
  v6[5] = reader;
  [(NSFileCoordinator *)self _coordinateReadingItemAtURL:url options:options error:outError byAccessor:v6];
}

uint64_t __73__NSFileCoordinator_coordinateReadingItemAtURL_options_error_byAccessor___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NSFileCoordinator_coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_2;
  v6[3] = &unk_1E69F3910;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return [v3 _invokeAccessor:v6 thenCompletionHandler:a3];
}

- (void)coordinateWritingItemAtURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options error:(NSError *)outError byAccessor:(void *)writer
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NSFileCoordinator_coordinateWritingItemAtURL_options_error_byAccessor___block_invoke;
  v6[3] = &unk_1E69F77D8;
  v6[4] = self;
  v6[5] = writer;
  [(NSFileCoordinator *)self _coordinateWritingItemAtURL:url options:options error:outError byAccessor:v6];
}

uint64_t __73__NSFileCoordinator_coordinateWritingItemAtURL_options_error_byAccessor___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NSFileCoordinator_coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_2;
  v6[3] = &unk_1E69F3910;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return [v3 _invokeAccessor:v6 thenCompletionHandler:a3];
}

- (void)coordinateReadingItemAtURL:(NSURL *)readingURL options:(NSFileCoordinatorReadingOptions)readingOptions writingItemAtURL:(NSURL *)writingURL options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError *)outError byAccessor:(void *)readerWriter
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__NSFileCoordinator_coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke;
  v8[3] = &unk_1E69F7800;
  v8[4] = self;
  v8[5] = readerWriter;
  [(NSFileCoordinator *)self _coordinateReadingItemAtURL:readingURL options:readingOptions writingItemAtURL:writingURL options:writingOptions error:outError byAccessor:v8];
}

uint64_t __98__NSFileCoordinator_coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[7] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__NSFileCoordinator_coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2;
  v6[3] = &unk_1E69F3820;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[5] = a3;
  v6[6] = v4;
  v6[4] = a2;
  return [v3 _invokeAccessor:v6 thenCompletionHandler:?];
}

- (void)coordinateWritingItemAtURL:(NSURL *)url1 options:(NSFileCoordinatorWritingOptions)options1 writingItemAtURL:(NSURL *)url2 options:(NSFileCoordinatorWritingOptions)options2 error:(NSError *)outError byAccessor:(void *)writer
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__NSFileCoordinator_coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke;
  v8[3] = &unk_1E69F7800;
  v8[4] = self;
  v8[5] = writer;
  [(NSFileCoordinator *)self _coordinateWritingItemAtURL:url1 options:options1 writingItemAtURL:url2 options:options2 error:outError byAccessor:v8];
}

uint64_t __98__NSFileCoordinator_coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[7] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__NSFileCoordinator_coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2;
  v6[3] = &unk_1E69F3820;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[5] = a3;
  v6[6] = v4;
  v6[4] = a2;
  return [v3 _invokeAccessor:v6 thenCompletionHandler:?];
}

- (void)coordinateAccessWithIntents:(NSArray *)intents queue:(NSOperationQueue *)queue byAccessor:(void *)accessor
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__NSFileCoordinator_coordinateAccessWithIntents_queue_byAccessor___block_invoke;
  v5[3] = &unk_1E69F7828;
  v5[4] = self;
  v5[5] = accessor;
  [(NSFileCoordinator *)self _coordinateAccessWithIntents:intents queue:queue byAccessor:v5];
}

uint64_t __66__NSFileCoordinator_coordinateAccessWithIntents_queue_byAccessor___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__NSFileCoordinator_coordinateAccessWithIntents_queue_byAccessor___block_invoke_2;
  v6[3] = &unk_1E69F3910;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return [v3 _invokeAccessor:v6 thenCompletionHandler:a3];
}

- (void)prepareForReadingItemsAtURLs:(NSArray *)readingURLs options:(NSFileCoordinatorReadingOptions)readingOptions writingItemsAtURLs:(NSArray *)writingURLs options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError *)outError byAccessor:(void *)batchAccessor
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__25;
  v37 = __Block_byref_object_dispose__25;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__25;
  v31 = __Block_byref_object_dispose__25;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__14;
  v25 = __Block_byref_object_dispose__15;
  v26 = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = [NSFileCoordinator _canonicalURLsForURLs:readingURLs];
  v17 = [NSFileCoordinator _canonicalURLsForURLs:writingURLs];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__NSFileCoordinator_prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_error_byAccessor___block_invoke;
  v20[3] = &unk_1E69F7850;
  v20[6] = &v27;
  v20[7] = &v21;
  v20[4] = v15;
  v20[5] = &v33;
  [(NSFileCoordinator *)self __prepareForReadingItemsAtURLs:v16 options:readingOptions writingItemsAtURLs:v17 options:writingOptions byAccessor:v20];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v15);
  if (v28[5])
  {
    (*(v22[5] + 16))();

    if (outError)
    {
      *outError = v28[5];
    }
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    self->_accessArbiter = v34[5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__NSFileCoordinator_prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_error_byAccessor___block_invoke_2;
    v19[3] = &unk_1E69F7C78;
    v19[4] = self;
    v19[5] = accessArbiter;
    v19[6] = &v21;
    (*(batchAccessor + 2))(batchAccessor, v19);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

intptr_t __102__NSFileCoordinator_prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_error_byAccessor___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  *(*(a1[7] + 8) + 40) = [a4 copy];
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

void __102__NSFileCoordinator_prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_error_byAccessor___block_invoke_2(void *a1)
{
  *(a1[4] + 8) = a1[5];
  (*(*(*(a1[6] + 8) + 40) + 16))();
  v2 = *(*(a1[6] + 8) + 40);
}

- (void)itemAtURL:(NSURL *)oldURL willMoveToURL:(NSURL *)newURL
{
  if (*NSFileCoordinatorGetTSD() != self)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSFileCoordinator itemAtURL:willMoveToURL:] may only be invoked from within a block passed to a -coordinate... method." userInfo:0]);
  }

  [(NSFileCoordinator *)self _itemAtURL:oldURL willMoveToURL:newURL];
}

- (void)itemAtURL:(NSURL *)oldURL didMoveToURL:(NSURL *)newURL
{
  if (*NSFileCoordinatorGetTSD() != self)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSFileCoordinator itemAtURL:didMoveToURL:] may only be invoked from within a block passed to a -coordinate... method." userInfo:0]);
  }

  [(NSFileCoordinator *)self _itemAtURL:oldURL didMoveToURL:newURL];
}

- (BOOL)_isValidUbiquityAttribute:(id)attribute
{
  if (qword_1ED440130 != -1)
  {
    dispatch_once(&qword_1ED440130, &__block_literal_global_74);
  }

  return [qword_1ED440128 member:attribute] != 0;
}

uint64_t __47__NSFileCoordinator__isValidUbiquityAttribute___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  result = [v0 initWithObjects:{*MEMORY[0x1E695DBD8], *MEMORY[0x1E695DCA8], *MEMORY[0x1E695DCB8], *MEMORY[0x1E695DCD8], *MEMORY[0x1E695DCE0], *MEMORY[0x1E695DC98], *MEMORY[0x1E695DC80], *MEMORY[0x1E695DCF0], *MEMORY[0x1E695DC78], *MEMORY[0x1E695DC70], *MEMORY[0x1E695DCC8], *MEMORY[0x1E695DD00], *MEMORY[0x1E695DCF8], *MEMORY[0x1E695DD10], *MEMORY[0x1E695DD08], *MEMORY[0x1E695DCE8], *MEMORY[0x1E695DCD0], 0}];
  qword_1ED440128 = result;
  return result;
}

- (void)itemAtURL:(NSURL *)url didChangeUbiquityAttributes:(NSSet *)attributes
{
  v21 = *MEMORY[0x1E69E9840];
  if (!attributes)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = @"nil attributes";
LABEL_15:
    objc_exception_throw([v14 exceptionWithName:v15 reason:v13 userInfo:0]);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSSet *)attributes countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(attributes);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      if (![(NSFileCoordinator *)self _isValidUbiquityAttribute:v11])
      {
        v13 = [NSString stringWithFormat:@"invalid attribute: %@", v11];
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        goto LABEL_15;
      }
    }

    v8 = [(NSSet *)attributes countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v8);
LABEL_10:
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    if ([(NSSet *)attributes count])
    {
      v12 = objc_autoreleasePoolPush();
      [self->_accessArbiter writerWithPurposeID:self->_purposeID didChangeUbiquityAttributes:attributes ofItemAtURL:{+[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", url))}];
      objc_autoreleasePoolPop(v12);
    }
  }
}

- (void)cancel
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED4400EC);
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  v3 = qword_1ED4400F8;
  if (os_log_type_enabled(qword_1ED4400F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "NSFileCoordinator instance %p was cancelled. All future claims made on this instance will immediately fail with cancellation", buf, 0xCu);
  }

  if (_NSIsNSSet())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    accessClaimIDOrIDs = self->_accessClaimIDOrIDs;
    v5 = [accessClaimIDOrIDs countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 138543362;
      v14 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(accessClaimIDOrIDs);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          if (qword_1ED440198 != -1)
          {
            dispatch_once(&qword_1ED440198, &__block_literal_global_935);
          }

          v11 = qword_1ED440100;
          if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            selfCopy = v10;
            _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "In-flight claim %{public}@ was cancelled", buf, 0xCu);
          }

          [self->_accessArbiter cancelAccessClaimForID:{v10, v14}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [accessClaimIDOrIDs countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else if (self->_accessClaimIDOrIDs)
  {
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v12 = qword_1ED440100;
    if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_accessClaimIDOrIDs;
      *buf = 138543362;
      selfCopy = v13;
      _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEFAULT, "In-flight claim %{public}@ was cancelled", buf, 0xCu);
    }

    [self->_accessArbiter cancelAccessClaimForID:self->_accessClaimIDOrIDs];
  }

  self->_isCancelled = 1;
  os_unfair_lock_unlock(&stru_1ED4400EC);
}

+ (id)_nextClaimIdentifier
{
  TSD = NSFileCoordinatorGetTSD();
  result = *(TSD + 32);
  if (!result)
  {
    result = __CFCreateUUIDString();
    *(TSD + 32) = result;
  }

  return result;
}

+ (void)_setNextClaimIdentifier:(id)identifier
{
  TSD = NSFileCoordinatorGetTSD();
  if (*(TSD + 32))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't set next claim identifier when current identifier has not been consumed" userInfo:0]);
  }

  *(TSD + 32) = [identifier copy];
}

- (void)_requestAccessClaim:(id)claim withProcedure:(id)procedure
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED4400EC);
  if (self->_isCancelled)
  {
    os_unfair_lock_unlock(&stru_1ED4400EC);
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v7 = qword_1ED440100;
    if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      claimID = [claim claimID];
      v12 = 2048;
      selfCopy = self;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ was probably made on an already-cancelled NSFileCoordinator instance (%p). It will be immediately cancelled before being sent to the server.", buf, 0x16u);
    }

    [claim setClaimerError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3072, 0)}];
    [claim unblockClaimerForReason:0x1EEF1EA90];
  }

  else
  {
    if (self->_accessClaimIDOrIDs)
    {
      v8 = _NSIsNSSet();
      accessClaimIDOrIDs = self->_accessClaimIDOrIDs;
      if (v8)
      {
        [accessClaimIDOrIDs addObject:{objc_msgSend(claim, "claimID")}];
      }

      else
      {
        self->_accessClaimIDOrIDs = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{accessClaimIDOrIDs, objc_msgSend(claim, "claimID"), 0}];
      }
    }

    else
    {
      self->_accessClaimIDOrIDs = [claim claimID];
    }

    (*(procedure + 2))(procedure);

    os_unfair_lock_unlock(&stru_1ED4400EC);
  }
}

- (void)_forgetAccessClaimForID:(id)d
{
  os_unfair_lock_lock(&stru_1ED4400EC);
  v5 = _NSIsNSSet();
  accessClaimIDOrIDs = self->_accessClaimIDOrIDs;
  if (v5)
  {
    [accessClaimIDOrIDs removeObject:d];
  }

  else if (accessClaimIDOrIDs && [accessClaimIDOrIDs isEqual:d])
  {

    self->_accessClaimIDOrIDs = 0;
  }

  os_unfair_lock_unlock(&stru_1ED4400EC);
}

uint64_t __70__NSFileCoordinator_NSPrivate___blockOnAccessClaim_withAccessArbiter___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) grantAccessClaim:*(a1 + 40) synchronouslyIfPossible:1];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    dispatch_retain(v3);
  }

  return [(NSAutoreleasePool *)v2 drain];
}

- (id)_willStartWriteWithIntents:(id)intents async:(BOOL)async
{
  v10 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__NSFileCoordinator_NSPrivate___willStartWriteWithIntents_async___block_invoke;
  v8[3] = &unk_1E69F7898;
  asyncCopy = async;
  v8[4] = intents;
  v8[5] = array;
  [intents enumerateObjectsUsingBlock:v8];
  return array;
}

void __65__NSFileCoordinator_NSPrivate___willStartWriteWithIntents_async___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 URL];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ([a2 isRead])
  {
    return;
  }

  v8 = [a2 writingOptions];
  v9 = v8;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (v8)
    {
      v10 = [NSMetadataQuery willBeginPossibleDeletionOfItemAtURL:v7];
      goto LABEL_9;
    }

    if ((v8 & 2) == 0)
    {
      v10 = [NSMetadataQuery willBeginPossibleCreationOfItemAtURL:v7];
      goto LABEL_9;
    }

    v11 = a3 + 1;
    if (v11 < [*(a1 + 32) count])
    {
      v12 = [*(a1 + 32) objectAtIndex:v11];
      if (([v12 isRead] & 1) == 0)
      {
        if ([v12 URL])
        {
          v10 = +[NSMetadataQuery willBeginPossibleMoveOfItemAtURL:toURL:](NSMetadataQuery, "willBeginPossibleMoveOfItemAtURL:toURL:", v7, [v12 URL]);
LABEL_9:
          if (v10)
          {
            [*(a1 + 40) addObject:v10];
          }
        }
      }
    }
  }

  if (_CFURLIsItemPromiseAtURL())
  {
    if ((v9 & 3) != 0)
    {
      v13 = _CFURLCopyLogicalURLOfPromiseAtURL();
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_new();
        [v15 setPromiseURL:v7];
        [v15 setLogicalURL:v14];
        v16 = v15;
        CFRelease(v14);
        if (v16)
        {
          v17 = *(a1 + 40);

          [v17 addObject:v16];
        }
      }
    }
  }
}

- (void)_didEndWrite:(id)write
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [write countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(write);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (object_getClass(v9) == NSFilePromiseWriteToken)
        {
          if (([objc_msgSend(v9 "promiseURL")] & 1) == 0)
          {
            -[NSFileCoordinator _itemDidDisappearAtURL:](self, "_itemDidDisappearAtURL:", [v9 logicalURL]);
          }
        }

        else
        {
          [NSMetadataQuery didEndPossibleFileOperation:v9];
        }
      }

      v6 = [write countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)_withAccessArbiter:(id)arbiter invokeAccessor:(id)accessor orDont:(BOOL)dont andRelinquishAccessClaim:(id)claim
{
  dontCopy = dont;
  v27 = *MEMORY[0x1E69E9840];
  claimID = [claim claimID];
  if (dontCopy)
  {
    [arbiter revokeAccessClaimForID:claimID];

    [claim finished];
  }

  else
  {
    shouldBeRevokedPriorToInvokingAccessor = [claim shouldBeRevokedPriorToInvokingAccessor];
    v13 = shouldBeRevokedPriorToInvokingAccessor;
    if (shouldBeRevokedPriorToInvokingAccessor)
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v14 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v26 = claimID;
        _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_INFO, "Revoking claim %{public}@ prior to invoking accessor", buf, 0xCu);
      }

      [arbiter revokeAccessClaimForID:claimID];
    }

    *buf = -1;
    v23 = 1;
    shouldEnableMaterializationDuringAccessorBlock = _NSSetThreadSpecificMaterializationState(1, buf);
    [claim protectFilesAgainstEviction];
    if (shouldEnableMaterializationDuringAccessorBlock)
    {
      if ([claim shouldEnableMaterializationDuringAccessorBlock])
      {
        v16 = 2;
      }

      else
      {
        v16 = *buf;
      }

      if (_NSSetThreadSpecificMaterializationState(v16, &v23) && v23 != 1)
      {
        __assert_rtn("[NSFileCoordinator(NSPrivate) _withAccessArbiter:invokeAccessor:orDont:andRelinquishAccessClaim:]", "NSFileCoordinator.m", 1002, "materializationOffState == IOPOL_MATERIALIZE_DATALESS_FILES_OFF");
      }

      shouldEnableMaterializationDuringAccessorBlock = [claim shouldEnableMaterializationDuringAccessorBlock];
    }

    v17 = [self->_fileReactor conformsToProtocol:&unk_1EEF9CEF8];
    v18 = v17;
    if (v17)
    {
      presentedItemURL = [self->_fileReactor presentedItemURL];
    }

    else
    {
      presentedItemURL = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__NSFileCoordinator_NSPrivate___withAccessArbiter_invokeAccessor_orDont_andRelinquishAccessClaim___block_invoke;
    v20[3] = &unk_1E69F78C0;
    v21 = v18;
    v20[4] = self;
    v20[5] = presentedItemURL;
    v22 = v13;
    v20[6] = arbiter;
    v20[7] = claimID;
    v20[8] = claim;
    (*(accessor + 2))(accessor, v20);
    if (shouldEnableMaterializationDuringAccessorBlock)
    {
      _NSSetThreadSpecificMaterializationState(*buf, &v24);
    }
  }
}

uint64_t __98__NSFileCoordinator_NSPrivate___withAccessArbiter_invokeAccessor_orDont_andRelinquishAccessClaim___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  if (*(a1 + 72) == 1)
  {
    v3 = [*(*(a1 + 32) + 16) presentedItemURL];
    if (v3 != *(a1 + 40))
    {
      v4 = v3;
      if (([v3 isEqual:?] & 1) == 0)
      {
        [*(a1 + 48) tiePresenterForID:objc_msgSend(*(a1 + 48) toItemAtURL:{"idForFileReactor:", *(*(a1 + 32) + 16)), +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", v4)}];
      }
    }
  }

  if ((*(a1 + 73) & 1) == 0)
  {
    [*(a1 + 48) revokeAccessClaimForID:*(a1 + 56)];
  }

  [*(a1 + 64) finished];

  return [(NSAutoreleasePool *)v2 drain];
}

- (void)_coordinateReadingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor
{
  v53 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = *(accessor + 2);

    v11(accessor, l, &__block_literal_global_199);
  }

  else
  {
    if (+[NSThread isMainThread])
    {
      optionsCopy = options | 0x80000000;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3052000000;
    v41 = __Block_byref_object_copy__25;
    v42 = __Block_byref_object_dispose__25;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3052000000;
    v35 = __Block_byref_object_copy__25;
    v36 = __Block_byref_object_dispose__25;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3052000000;
    v29 = __Block_byref_object_copy__25;
    v30 = __Block_byref_object_dispose__25;
    v31 = 0;
    v25 = 0;
    v12 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:&optionsCopy removedResolveFlags:&v25];
    v13 = [NSFileReadingClaim alloc];
    purposeID = self->_purposeID;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_2;
    v23[3] = &unk_1E69F78E8;
    v24 = v25;
    v23[4] = &v38;
    v23[5] = &v32;
    v23[6] = &v26;
    v15 = [(NSFileReadingClaim *)v13 initWithPurposeID:purposeID url:v12 options:optionsCopy claimer:v23];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v16 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v17 = optionsCopy;
        v18 = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v15 claimID];
        *buf = 134218755;
        v46 = v17;
        v47 = 2113;
        lCopy = l;
        v49 = 2114;
        v50 = v18;
        v51 = 2114;
        v52 = claimID;
        _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, "Read options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v20 = self->_accessArbiter;
    [(NSFileCoordinator *)self _blockOnAccessClaim:v15 withAccessArbiter:v20];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_203;
    v22[3] = &unk_1E69F7910;
    v22[6] = accessor;
    v22[7] = &v38;
    v22[4] = l;
    v22[5] = v20;
    [(NSFileCoordinator *)self _withAccessArbiter:v20 invokeAccessor:v22 orDont:v27[5] != 0 andRelinquishAccessClaim:v15];
    v21 = v27[5];
    if (error && v21)
    {
      *error = v21;
      v21 = v27[5];
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }
}

id __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 40) = a4;
  result = a5;
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

uint64_t __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_203(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1[7] + 8) + 40);
  if (!v3)
  {
    v3 = a1[4];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_2_204;
  v6[3] = &unk_1E69F3910;
  v4 = a1[6];
  v6[4] = a1[5];
  v6[5] = a2;
  return (*(v4 + 16))(v4, v3, v6);
}

void __85__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_error_byAccessor___block_invoke_2_204(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (void)_coordinateWritingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor
{
  v45 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = *(accessor + 2);

    v11(accessor, l, &__block_literal_global_207);
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3052000000;
    v34 = __Block_byref_object_copy__25;
    v35 = __Block_byref_object_dispose__25;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = __Block_byref_object_copy__25;
    v29 = __Block_byref_object_dispose__25;
    v30 = 0;
    v24 = 0;
    v12 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:0 removedResolveFlags:&v24];
    v13 = [NSFileWritingClaim alloc];
    purposeID = self->_purposeID;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_2;
    v22[3] = &unk_1E69F7938;
    v23 = v24;
    v22[4] = &v31;
    v22[5] = &v25;
    v15 = [(NSFileWritingClaim *)v13 initWithPurposeID:purposeID url:v12 options:options claimer:v22];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v16 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v15 claimID];
        *buf = 134218755;
        optionsCopy = options;
        v39 = 2113;
        lCopy = l;
        v41 = 2114;
        v42 = v17;
        v43 = 2114;
        v44 = claimID;
        _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, "Write options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v19 = self->_accessArbiter;
    [(NSFileCoordinator *)self _blockOnAccessClaim:v15 withAccessArbiter:v19];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_210;
    v21[3] = &unk_1E69F7988;
    v21[4] = l;
    v21[5] = self;
    v21[8] = &v31;
    v21[9] = options;
    v21[6] = v19;
    v21[7] = accessor;
    [(NSFileCoordinator *)self _withAccessArbiter:v19 invokeAccessor:v21 orDont:v26[5] != 0 andRelinquishAccessClaim:v15];
    v20 = v26[5];
    if (error && v20)
    {
      *error = v20;
      v20 = v26[5];
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }
}

id __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 48)];
  result = a4;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_210(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1[8] + 8) + 40);
  if (!v4)
  {
    v4 = a1[4];
  }

  v5 = a1[5];
  v11[0] = [NSFileAccessIntent writingIntentWithURL:v4 options:a1[9]];
  v6 = [v5 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v11, 1), 0}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_2_213;
  v10[3] = &unk_1E69F7960;
  v8 = a1[6];
  v7 = a1[7];
  v10[4] = a1[5];
  v10[5] = v6;
  v10[6] = v8;
  v10[7] = a2;
  return (*(v7 + 16))(v7, v4, v10);
}

void __85__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_error_byAccessor___block_invoke_2_213(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) _didEndWrite:*(a1 + 40)];
  v2 = *(a1 + 48);
}

- (void)_coordinateReadingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 error:(id *)error byAccessor:(id)accessor
{
  v69 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v15 = *(accessor + 2);

    v15(accessor, l, rL, &__block_literal_global_215);
  }

  else
  {
    if (+[NSThread isMainThread])
    {
      optionsCopy = options | 0x80000000;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x3052000000;
    v57 = __Block_byref_object_copy__25;
    v58 = __Block_byref_object_dispose__25;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = __Block_byref_object_copy__25;
    v52 = __Block_byref_object_dispose__25;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3052000000;
    v45 = __Block_byref_object_copy__25;
    v46 = __Block_byref_object_dispose__25;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = __Block_byref_object_copy__25;
    v40 = __Block_byref_object_dispose__25;
    v41 = 0;
    v35 = 0;
    v16 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:&optionsCopy removedResolveFlags:&v35 + 4];
    v17 = [NSFileCoordinator _canonicalURLForURL:rL modifyingReadingOptions:0 removedResolveFlags:&v35];
    v18 = [NSFileReadingWritingClaim alloc];
    purposeID = self->_purposeID;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2;
    v32[3] = &unk_1E69F79B0;
    v32[4] = rL;
    v32[5] = &v54;
    v33 = HIDWORD(v35);
    v34 = v35;
    v32[6] = &v48;
    v32[7] = &v42;
    v32[8] = &v36;
    v20 = [(NSFileReadingWritingClaim *)v18 initWithPurposeID:purposeID readingURL:v16 options:optionsCopy writingURL:v17 options:a6 claimer:v32];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v21 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        v22 = optionsCopy;
        v23 = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        v62 = v22;
        v63 = 2113;
        rLCopy = l;
        v65 = 2114;
        v66 = v23;
        v67 = 2114;
        v68 = claimID;
        _os_log_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEFAULT, "Read options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
        error = errorCopy;
        if (qword_1ED440198 != -1)
        {
          dispatch_once(&qword_1ED440198, &__block_literal_global_935);
        }
      }

      v25 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_purposeID;
        claimID2 = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        v62 = a6;
        v63 = 2113;
        rLCopy = rL;
        v65 = 2114;
        v66 = v26;
        v67 = 2114;
        v68 = claimID2;
        _os_log_impl(&dword_18075C000, v25, OS_LOG_TYPE_DEFAULT, "Write options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v28 = self->_accessArbiter;
    [(NSFileCoordinator *)self _blockOnAccessClaim:v20 withAccessArbiter:v28];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_218;
    v31[3] = &unk_1E69F79D8;
    v31[4] = l;
    v31[5] = rL;
    v31[10] = &v48;
    v31[11] = a6;
    v31[8] = accessor;
    v31[9] = &v54;
    v31[6] = self;
    v31[7] = v28;
    [(NSFileCoordinator *)self _withAccessArbiter:v28 invokeAccessor:v31 orDont:v37[5] != 0 andRelinquishAccessClaim:v20];
    v29 = v37;
    if (v37[5])
    {

      v29 = v37;
      if (error)
      {
        *error = v37[5];
        v29 = v37;
      }
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);
  }
}

id __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 72)];
  *(*(*(a1 + 48) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:*(a1 + 32) resolveFlags:*(a1 + 76)];
  *(*(*(a1 + 56) + 8) + 40) = a5;
  result = a6;
  *(*(*(a1 + 64) + 8) + 40) = result;
  return result;
}

uint64_t __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_218(void *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1[9] + 8) + 40);
  if (!v4)
  {
    v4 = a1[4];
  }

  v5 = *(*(a1[10] + 8) + 40);
  if (!v5)
  {
    v5 = a1[5];
  }

  v6 = a1[6];
  v12[0] = [NSFileAccessIntent writingIntentWithURL:v5 options:a1[11]];
  v7 = [v6 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v12, 1), 0}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2_219;
  v11[3] = &unk_1E69F7960;
  v9 = a1[7];
  v8 = a1[8];
  v11[4] = a1[6];
  v11[5] = v7;
  v11[6] = v9;
  v11[7] = a2;
  return (*(v8 + 16))(v8, v4, v5, v11);
}

void __110__NSFileCoordinator_NSPrivate___coordinateReadingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2_219(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) _didEndWrite:*(a1 + 40)];
  v2 = *(a1 + 48);
}

- (void)_coordinateWritingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 error:(id *)error byAccessor:(id)accessor
{
  v61 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v15 = *(accessor + 2);

    v15(accessor, l, rL, &__block_literal_global_221_1);
  }

  else
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3052000000;
    v50 = __Block_byref_object_copy__25;
    v51 = __Block_byref_object_dispose__25;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__25;
    v45 = __Block_byref_object_dispose__25;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3052000000;
    v38 = __Block_byref_object_copy__25;
    v39 = __Block_byref_object_dispose__25;
    v40 = 0;
    v34 = 0;
    v16 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:0 removedResolveFlags:&v34 + 4];
    v17 = [NSFileCoordinator _canonicalURLForURL:rL modifyingReadingOptions:0 removedResolveFlags:&v34];
    v18 = [NSFileWritingWritingClaim alloc];
    purposeID = self->_purposeID;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2;
    v31[3] = &unk_1E69F7A00;
    v31[4] = &v47;
    v31[5] = &v41;
    v32 = HIDWORD(v34);
    v33 = v34;
    v31[6] = &v35;
    v20 = [(NSFileWritingWritingClaim *)v18 initWithPurposeID:purposeID url:v16 options:options url:v17 options:a6 claimer:v31];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v21 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        v22 = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        optionsCopy = options;
        v55 = 2113;
        rLCopy = l;
        v57 = 2114;
        v58 = v22;
        v59 = 2114;
        v60 = claimID;
        _os_log_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEFAULT, "Write options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
        error = errorCopy;
        if (qword_1ED440198 != -1)
        {
          dispatch_once(&qword_1ED440198, &__block_literal_global_935);
        }
      }

      v24 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_purposeID;
        claimID2 = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        optionsCopy = a6;
        v55 = 2113;
        rLCopy = rL;
        v57 = 2114;
        v58 = v25;
        v59 = 2114;
        v60 = claimID2;
        _os_log_impl(&dword_18075C000, v24, OS_LOG_TYPE_DEFAULT, "Write options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v27 = self->_accessArbiter;
    [(NSFileCoordinator *)self _blockOnAccessClaim:v20 withAccessArbiter:v27];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_224;
    v30[3] = &unk_1E69F7A28;
    v30[4] = l;
    v30[5] = rL;
    v30[10] = &v41;
    v30[11] = options;
    v30[12] = a6;
    v30[8] = accessor;
    v30[9] = &v47;
    v30[6] = self;
    v30[7] = v27;
    [(NSFileCoordinator *)self _withAccessArbiter:v27 invokeAccessor:v30 orDont:v36[5] != 0 andRelinquishAccessClaim:v20];
    v28 = v36;
    if (v36[5])
    {

      v28 = v36;
      if (error)
      {
        *error = v36[5];
        v28 = v36;
      }
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v47, 8);
  }
}

id __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 40) = [NSFileCoordinator _reconstructedURLForURL:a4 resolveFlags:*(a1 + 60)];
  result = a5;
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

uint64_t __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_224(void *a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1[9] + 8) + 40);
  if (!v4)
  {
    v4 = a1[4];
  }

  v5 = *(*(a1[10] + 8) + 40);
  if (!v5)
  {
    v5 = a1[5];
  }

  v6 = a1[6];
  v12[0] = [NSFileAccessIntent writingIntentWithURL:v4 options:a1[11]];
  v12[1] = [NSFileAccessIntent writingIntentWithURL:v5 options:a1[12]];
  v7 = [v6 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v12, 2), 0}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2_225;
  v11[3] = &unk_1E69F7960;
  v9 = a1[7];
  v8 = a1[8];
  v11[4] = a1[6];
  v11[5] = v7;
  v11[6] = v9;
  v11[7] = a2;
  return (*(v8 + 16))(v8, v4, v5, v11);
}

void __110__NSFileCoordinator_NSPrivate___coordinateWritingItemAtURL_options_writingItemAtURL_options_error_byAccessor___block_invoke_2_225(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) _didEndWrite:*(a1 + 40)];
  v2 = *(a1 + 48);
}

- (void)_coordinateAccessWithIntents:(id)intents queue:(id)queue byAccessor:(id)accessor
{
  v48 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke;
    v32[3] = &unk_1E69F40C0;
    v32[4] = accessor;
    [queue _fc_addUncancellableOperationWithBlock:v32];
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    v28 = objc_alloc_init(NSAutoreleasePool);
    v10 = [NSFileCoordinator _canonicalIntentsForIntents:intents];
    v11 = [NSFileMultipleAccessClaim alloc];
    purposeID = self->_purposeID;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_3;
    v31[3] = &unk_1E69F7A78;
    v31[4] = self;
    v31[5] = intents;
    v31[6] = v10;
    v31[7] = accessArbiter;
    v27 = accessArbiter;
    v31[8] = queue;
    v31[9] = accessor;
    v29 = [(NSFileMultipleAccessClaim *)v11 initWithPurposeID:purposeID intents:v10 claimer:v31];
    if (__NSFCShouldLog(1))
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v13 = [intents countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v45;
        v16 = &_MergedGlobals_143;
        do
        {
          v17 = 0;
          do
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(intents);
            }

            v18 = *(*(&v44 + 1) + 8 * v17);
            if (*(v16 + 51) != -1)
            {
              dispatch_once(&qword_1ED440198, &__block_literal_global_935);
            }

            v19 = qword_1ED440100;
            if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
            {
              intentsCopy = intents;
              if ([v18 isRead])
              {
                v21 = "Read";
              }

              else
              {
                v21 = "Write";
              }

              if ([v18 isRead])
              {
                readingOptions = [v18 readingOptions];
              }

              else
              {
                readingOptions = [v18 writingOptions];
              }

              v23 = readingOptions;
              v24 = [v18 URL];
              v25 = self->_purposeID;
              claimID = [(NSFileAccessClaim *)v29 claimID];
              *buf = 136316163;
              v34 = v21;
              v35 = 2048;
              v36 = v23;
              v37 = 2113;
              v38 = v24;
              v39 = 2114;
              v40 = v25;
              v41 = 2114;
              v42 = claimID;
              _os_log_impl(&dword_18075C000, v19, OS_LOG_TYPE_DEFAULT, "%s options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x34u);
              intents = intentsCopy;
              v16 = &_MergedGlobals_143;
            }

            ++v17;
          }

          while (v14 != v17);
          v14 = [intents countByEnumeratingWithState:&v44 objects:v43 count:16];
        }

        while (v14);
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_233;
    v30[3] = &unk_1E69F2080;
    v30[4] = v27;
    v30[5] = v29;
    [(NSFileCoordinator *)self _requestAccessClaim:v29 withProcedure:v30];

    [(NSAutoreleasePool *)v28 drain];
  }
}

uint64_t __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _forgetAccessClaimForID:{objc_msgSend(a2, "claimID")}];
  v8 = [*(a1 + 40) count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    for (i = 0; i != v9; ++i)
    {
      v13 = [*(a1 + 40) objectAtIndex:i];
      if ([v13 isRead])
      {
        v14 = [a3 objectAtIndex:v10++];
      }

      else
      {
        v14 = [a4 objectAtIndex:v11++];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setURL:{+[NSFileCoordinator _reconstructedURLForURL:resolveFlags:](NSFileCoordinator, "_reconstructedURLForURL:resolveFlags:", v14, objc_msgSend(objc_msgSend(*(a1 + 48), "objectAtIndex:", i), "removedResolveFlags"))}];
      }
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_4;
  v21[3] = &unk_1E69F7CA0;
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v21[4] = *(a1 + 64);
  v21[5] = a6;
  v22 = *(a1 + 32);
  v23 = v16;
  return [v22 _withAccessArbiter:v15 invokeAccessor:v21 orDont:0 andRelinquishAccessClaim:a2];
}

uint64_t __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_5;
  v5[3] = &unk_1E69F7A50;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = a2;
  return [v2 _fc_addUncancellableOperationWithBlock:v5];
}

uint64_t __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_5(uint64_t a1)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 40) _willStartWriteWithIntents:*(a1 + 48) async:0];
    v2 = *(a1 + 32);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_6;
  v7[3] = &unk_1E69F3820;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7[5] = v3;
  v7[6] = v5;
  v7[4] = *(a1 + 40);
  return (*(v4 + 16))(v4, v2, v7);
}

uint64_t __78__NSFileCoordinator_NSPrivate___coordinateAccessWithIntents_queue_byAccessor___block_invoke_6(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _didEndWrite:v3];
}

- (void)_itemAtURL:(id)l didMoveToURL:(id)rL
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_autoreleasePoolPush();
    [self->_accessArbiter writerWithPurposeID:self->_purposeID didMoveItemAtURL:+[NSURLPromisePair pairWithURL:](NSURLPromisePair toURL:{"pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", l)), +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", rL))}];

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_ubiquityDidChangeForItemAtURL:(id)l
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    [self->_accessArbiter writerWithPurposeID:self->_purposeID didChangeUbiquityOfItemAtURL:{+[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", l))}];

    [(NSAutoreleasePool *)v5 drain];
  }
}

- (void)sharingDidChangeForItemAtURL:(id)l
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v5 = objc_autoreleasePoolPush();
    [self->_accessArbiter writerWithPurposeID:self->_purposeID didChangeSharingOfItemAtURL:{+[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", l))}];

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_itemDidDisappearAtURL:(id)l
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    [self->_accessArbiter writerWithPurposeID:self->_purposeID didMakeItemDisappearAtURL:{+[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", l))}];

    [(NSAutoreleasePool *)v5 drain];
  }
}

- (void)_itemDidChangeAtURL:(id)l
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    [self->_accessArbiter writerWithPurposeID:self->_purposeID didChangeItemAtURL:{+[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", +[NSFileCoordinator _canonicalURLForURL:](NSFileCoordinator, "_canonicalURLForURL:", l))}];

    [(NSAutoreleasePool *)v5 drain];
  }
}

- (void)__coordinateReadingItemAtURL:(id)l options:(unint64_t)options purposeID:(id)d byAccessor:(id)accessor
{
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v10 = *(accessor + 2);

    v10(accessor, l, 0, &__block_literal_global_235);
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    v12 = objc_alloc_init(NSAutoreleasePool);
    v22 = 0;
    v13 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:&optionsCopy removedResolveFlags:&v22];
    v14 = [NSFileReadingClaim alloc];
    v20[6] = MEMORY[0x1E69E9820];
    v20[7] = 3221225472;
    v20[8] = __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_2;
    v20[9] = &unk_1E69F7AC8;
    v21 = v22;
    v20[10] = self;
    v20[11] = l;
    v20[13] = accessor;
    v20[14] = optionsCopy;
    v20[12] = accessArbiter;
    v15 = [NSFileReadingClaim initWithPurposeID:v14 url:"initWithPurposeID:url:options:claimer:" options:d claimer:v13];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v16 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v17 = optionsCopy;
        purposeID = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v15 claimID];
        *buf = 134218755;
        v25 = v17;
        v26 = 2113;
        lCopy = l;
        v28 = 2114;
        v29 = purposeID;
        v30 = 2114;
        v31 = claimID;
        _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, "Read (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_236;
    v20[3] = &unk_1E69F2080;
    v20[4] = accessArbiter;
    v20[5] = v15;
    [(NSFileCoordinator *)self _requestAccessClaim:v15 withProcedure:v20];

    [(NSAutoreleasePool *)v12 drain];
  }
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[9] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _forgetAccessClaimForID:{objc_msgSend(a2, "claimID")}];
  if (a3)
  {
    v9 = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 72)];
  }

  else
  {
    v9 = *(a1 + 40);
  }

  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_3;
  v14[3] = &unk_1E69F7AA0;
  v14[4] = v10;
  v14[5] = v9;
  v11 = *(a1 + 64);
  v12 = *(a1 + 48);
  v14[7] = *(a1 + 56);
  v14[8] = v11;
  v14[6] = a5;
  return [v10 _withAccessArbiter:v12 invokeAccessor:v14 orDont:0 andRelinquishAccessClaim:a2];
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_3(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v11[0] = [NSFileAccessIntent readingIntentWithURL:a1[5] options:a1[8]];
  v5 = [v4 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v11, 1), 1}];
  v6 = a1[6];
  v7 = a1[7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_4;
  v10[3] = &unk_1E69F3820;
  v10[5] = v5;
  v10[6] = a2;
  v8 = a1[5];
  v10[4] = a1[4];
  return (*(v7 + 16))(v7, v8, v6, v10);
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_purposeID_byAccessor___block_invoke_4(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _didEndWrite:v3];
}

- (void)__coordinateWritingItemAtURL:(id)l options:(unint64_t)options purposeID:(id)d byAccessor:(id)accessor
{
  v32 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = *(accessor + 2);

    v11(accessor, l, 0, &__block_literal_global_238_0);
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    v13 = objc_alloc_init(NSAutoreleasePool);
    v23 = 0;
    v14 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:0 removedResolveFlags:&v23];
    v15 = [NSFileWritingClaim alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_2;
    v21[3] = &unk_1E69F7AF0;
    v22 = v23;
    v21[4] = self;
    v21[5] = l;
    v21[7] = accessor;
    v21[8] = options;
    v21[6] = accessArbiter;
    v16 = [(NSFileWritingClaim *)v15 initWithPurposeID:d url:v14 options:options claimer:v21];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v17 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        purposeID = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v16 claimID];
        *buf = 134218755;
        optionsCopy = options;
        v26 = 2113;
        lCopy = l;
        v28 = 2114;
        v29 = purposeID;
        v30 = 2114;
        v31 = claimID;
        _os_log_impl(&dword_18075C000, v17, OS_LOG_TYPE_DEFAULT, "Write (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_239;
    v20[3] = &unk_1E69F2080;
    v20[4] = accessArbiter;
    v20[5] = v16;
    [(NSFileCoordinator *)self _requestAccessClaim:v16 withProcedure:v20];

    [(NSAutoreleasePool *)v13 drain];
  }
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[9] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _forgetAccessClaimForID:{objc_msgSend(a2, "claimID")}];
  if (a3)
  {
    v8 = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 72)];
  }

  else
  {
    v8 = *(a1 + 40);
  }

  v9 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_3;
  v13[3] = &unk_1E69F7AA0;
  v13[4] = v9;
  v13[5] = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v13[7] = *(a1 + 56);
  v13[8] = v10;
  v13[6] = a4;
  return [v9 _withAccessArbiter:v11 invokeAccessor:v13 orDont:0 andRelinquishAccessClaim:a2];
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_3(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v11[0] = [NSFileAccessIntent writingIntentWithURL:a1[5] options:a1[8]];
  v5 = [v4 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v11, 1), 1}];
  v6 = a1[6];
  v7 = a1[7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_4;
  v10[3] = &unk_1E69F3820;
  v10[5] = v5;
  v10[6] = a2;
  v8 = a1[5];
  v10[4] = a1[4];
  return (*(v7 + 16))(v7, v8, v6, v10);
}

uint64_t __90__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_purposeID_byAccessor___block_invoke_4(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _didEndWrite:v3];
}

- (void)__coordinateReadingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 purposeID:(id)d byAccessor:(id)accessor
{
  v44 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v14 = *(accessor + 2);

    v14(accessor, l, rL, 0, &__block_literal_global_241_0);
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    v16 = objc_alloc_init(NSAutoreleasePool);
    v34 = 0;
    v17 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:&optionsCopy removedResolveFlags:&v34 + 4];
    v18 = [NSFileCoordinator _canonicalURLForURL:rL modifyingReadingOptions:0 removedResolveFlags:&v34];
    v19 = [NSFileReadingWritingClaim alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_2;
    v31[3] = &unk_1E69F7B40;
    v31[4] = self;
    v31[5] = l;
    v32 = HIDWORD(v34);
    v33 = v34;
    v31[6] = rL;
    v31[7] = accessArbiter;
    v31[8] = accessor;
    v31[9] = a6;
    v20 = [(NSFileReadingWritingClaim *)v19 initWithPurposeID:d readingURL:v17 options:optionsCopy writingURL:v18 options:a6 claimer:v31];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v21 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v16;
        v23 = optionsCopy;
        purposeID = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        v37 = v23;
        v16 = v22;
        v38 = 2113;
        rLCopy = l;
        v40 = 2114;
        v41 = purposeID;
        v42 = 2114;
        v43 = claimID;
        _os_log_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEFAULT, "Read (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
        if (qword_1ED440198 != -1)
        {
          dispatch_once(&qword_1ED440198, &__block_literal_global_935);
        }
      }

      v26 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v16;
        v28 = self->_purposeID;
        claimID2 = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        v37 = a6;
        v38 = 2113;
        rLCopy = rL;
        v40 = 2114;
        v41 = v28;
        v16 = v27;
        v42 = 2114;
        v43 = claimID2;
        _os_log_impl(&dword_18075C000, v26, OS_LOG_TYPE_DEFAULT, "Write (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_242;
    v30[3] = &unk_1E69F2080;
    v30[4] = accessArbiter;
    v30[5] = v20;
    [(NSFileCoordinator *)self _requestAccessClaim:v20 withProcedure:v30];

    [(NSAutoreleasePool *)v16 drain];
  }
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[10] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _forgetAccessClaimForID:{objc_msgSend(a2, "claimID")}];
  if (!a3)
  {
    v11 = *(a1 + 40);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = *(a1 + 48);
    goto LABEL_6;
  }

  v11 = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 80)];
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [NSFileCoordinator _reconstructedURLForURL:a4 resolveFlags:*(a1 + 84)];
LABEL_6:
  v13 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_3;
  v17[3] = &unk_1E69F7B18;
  v17[4] = v13;
  v17[5] = v12;
  v14 = *(a1 + 72);
  v15 = *(a1 + 56);
  v17[8] = *(a1 + 64);
  v17[9] = v14;
  v17[6] = v11;
  v17[7] = a6;
  return [v13 _withAccessArbiter:v15 invokeAccessor:v17 orDont:0 andRelinquishAccessClaim:a2];
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_3(void *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v12[0] = [NSFileAccessIntent writingIntentWithURL:a1[5] options:a1[9]];
  v5 = [v4 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v12, 1), 1}];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_4;
  v11[3] = &unk_1E69F3820;
  v11[5] = v5;
  v11[6] = a2;
  v11[4] = a1[4];
  return (*(v9 + 16))(v9, v6, v7, v8, v11);
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateReadingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_4(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _didEndWrite:v3];
}

- (void)__coordinateWritingItemAtURL:(id)l options:(unint64_t)options writingItemAtURL:(id)rL options:(unint64_t)a6 purposeID:(id)d byAccessor:(id)accessor
{
  v41 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    v15 = *(accessor + 2);

    v15(accessor, l, rL, 0, &__block_literal_global_244);
  }

  else
  {
    accessArbiter = self->_accessArbiter;
    v27 = objc_alloc_init(NSAutoreleasePool);
    v32 = 0;
    v17 = [NSFileCoordinator _canonicalURLForURL:l modifyingReadingOptions:0 removedResolveFlags:&v32 + 4];
    v18 = [NSFileCoordinator _canonicalURLForURL:rL modifyingReadingOptions:0 removedResolveFlags:&v32];
    v19 = [NSFileWritingWritingClaim alloc];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_2;
    v29[3] = &unk_1E69F7B90;
    v29[4] = self;
    v29[5] = l;
    v30 = HIDWORD(v32);
    v31 = v32;
    v29[6] = rL;
    v29[7] = accessArbiter;
    v29[9] = options;
    v29[10] = a6;
    v29[8] = accessor;
    v20 = [(NSFileWritingWritingClaim *)v19 initWithPurposeID:d url:v17 options:options url:v18 options:a6 claimer:v29];
    if (__NSFCShouldLog(1))
    {
      if (qword_1ED440198 != -1)
      {
        dispatch_once(&qword_1ED440198, &__block_literal_global_935);
      }

      v21 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        purposeID = self->_purposeID;
        claimID = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        optionsCopy = options;
        v35 = 2113;
        rLCopy = l;
        v37 = 2114;
        v38 = purposeID;
        v39 = 2114;
        v40 = claimID;
        _os_log_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEFAULT, "Write (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
        if (qword_1ED440198 != -1)
        {
          dispatch_once(&qword_1ED440198, &__block_literal_global_935);
        }
      }

      v24 = qword_1ED440100;
      if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_purposeID;
        claimID2 = [(NSFileAccessClaim *)v20 claimID];
        *buf = 134218755;
        optionsCopy = a6;
        v35 = 2113;
        rLCopy = rL;
        v37 = 2114;
        v38 = v25;
        v39 = 2114;
        v40 = claimID2;
        _os_log_impl(&dword_18075C000, v24, OS_LOG_TYPE_DEFAULT, "Write (Async) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
      }
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_245;
    v28[3] = &unk_1E69F2080;
    v28[4] = self;
    v28[5] = v20;
    [(NSFileCoordinator *)self _requestAccessClaim:v20 withProcedure:v28];

    [(NSAutoreleasePool *)v27 drain];
  }
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _forgetAccessClaimForID:{objc_msgSend(a2, "claimID")}];
  if (!a3)
  {
    v10 = *(a1 + 40);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a1 + 48);
    goto LABEL_6;
  }

  v10 = [NSFileCoordinator _reconstructedURLForURL:a3 resolveFlags:*(a1 + 88)];
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [NSFileCoordinator _reconstructedURLForURL:a4 resolveFlags:*(a1 + 92)];
LABEL_6:
  v12 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_3;
  v16[3] = &unk_1E69F7B68;
  v16[4] = v12;
  v16[5] = v10;
  v17 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v16[7] = a5;
  v16[8] = v14;
  v16[6] = v11;
  return [v12 _withAccessArbiter:v13 invokeAccessor:v16 orDont:0 andRelinquishAccessClaim:a2];
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_3(void *a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v12[0] = [NSFileAccessIntent writingIntentWithURL:a1[5] options:a1[9]];
  v12[1] = [NSFileAccessIntent writingIntentWithURL:a1[6] options:a1[10]];
  v5 = [v4 _willStartWriteWithIntents:objc_msgSend(MEMORY[0x1E695DEC8] async:{"arrayWithObjects:count:", v12, 2), 1}];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_4;
  v11[3] = &unk_1E69F3820;
  v11[5] = v5;
  v11[6] = a2;
  v11[4] = a1[4];
  return (*(v9 + 16))(v9, v6, v7, v8, v11);
}

uint64_t __115__NSFileCoordinator_NSPrivate____coordinateWritingItemAtURL_options_writingItemAtURL_options_purposeID_byAccessor___block_invoke_4(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _didEndWrite:v3];
}

- (void)__prepareForReadingItemsAtURLs:(id)ls options:(unint64_t)options writingItemsAtURLs:(id)rLs options:(unint64_t)a6 byAccessor:(id)accessor
{
  v74 = *MEMORY[0x1E69E9840];
  if (+[NSFileCoordinator _skipCoordinationWork])
  {
    accessArbiter = self->_accessArbiter;
    v14 = *(accessor + 2);

    v14(accessor, accessArbiter, 0, &__block_literal_global_247_0);
  }

  else
  {
    v15 = qos_class_main();
    v16 = dispatch_queue_attr_make_with_qos_class(0, v15, 0);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(v16, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    optionsCopy = options;
    v18 = dispatch_queue_create("com.apple.FileCoordination.subarbitration", v17);
    v19 = +[NSXPCListener anonymousListener];
    v20 = [[NSFileAccessSubarbiter alloc] initWithQueue:v18 listener:v19];
    [(NSXPCListener *)v19 setDelegate:v20];
    [(NSXPCListener *)v19 _setQueue:v18];
    [(NSXPCListener *)v19 resume];
    lsCopy = ls;
    v47 = objc_alloc_init(NSAutoreleasePool);
    v21 = [NSFileCoordinator _canonicalURLsForURLs:ls];
    obj = rLs;
    v22 = [NSFileCoordinator _canonicalURLsForURLs:rLs];
    v23 = [NSFileSubarbitrationClaim alloc];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __109__NSFileCoordinator_NSPrivate____prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_byAccessor___block_invoke_2;
    v55[3] = &unk_1E69F7BE0;
    v55[7] = v18;
    v55[8] = accessor;
    selfCopy = self;
    v55[4] = self;
    v55[5] = v20;
    v48 = v19;
    v55[6] = v19;
    v49 = a6;
    v52 = [(NSFileSubarbitrationClaim *)v23 initWithReadingURLs:v21 options:optionsCopy writingURLs:v22 options:a6 claimer:v55];
    if (__NSFCShouldLog(1))
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v24 = lsCopy;
      v25 = [lsCopy countByEnumeratingWithState:&v70 objects:v69 count:16];
      v26 = &_MergedGlobals_143;
      v27 = &_MergedGlobals_143;
      if (v25)
      {
        v28 = v25;
        v29 = *v71;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v71 != v29)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v70 + 1) + 8 * i);
            if (*(v26 + 51) != -1)
            {
              dispatch_once(&qword_1ED440198, &__block_literal_global_935);
            }

            v32 = *(v27 + 32);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v27;
              v34 = v26;
              v35 = v24;
              purposeID = selfCopy->_purposeID;
              claimID = [(NSFileAccessClaim *)v52 claimID];
              *buf = 134218755;
              v62 = optionsCopy;
              v63 = 2113;
              v64 = v31;
              v65 = 2114;
              v66 = purposeID;
              v24 = v35;
              v26 = v34;
              v27 = v33;
              v67 = 2114;
              v68 = claimID;
              _os_log_impl(&dword_18075C000, v32, OS_LOG_TYPE_DEFAULT, "Read (Subarbitration) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
            }
          }

          v28 = [v24 countByEnumeratingWithState:&v70 objects:v69 count:16];
        }

        while (v28);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v38 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v58;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v58 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v57 + 1) + 8 * j);
            if (*(v26 + 51) != -1)
            {
              dispatch_once(&qword_1ED440198, &__block_literal_global_935);
            }

            v43 = *(v27 + 32);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = selfCopy->_purposeID;
              claimID2 = [(NSFileAccessClaim *)v52 claimID];
              *buf = 134218755;
              v62 = v49;
              v63 = 2113;
              v64 = v42;
              v65 = 2114;
              v66 = v44;
              v67 = 2114;
              v68 = claimID2;
              _os_log_impl(&dword_18075C000, v43, OS_LOG_TYPE_DEFAULT, "Write (Subarbitration) options: %lx -- URL: %{private}@ -- purposeID: %{public}@ -- claimID: %{public}@", buf, 0x2Au);
            }
          }

          v39 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
        }

        while (v39);
      }
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __109__NSFileCoordinator_NSPrivate____prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_byAccessor___block_invoke_253;
    v54[3] = &unk_1E69F68D8;
    v54[4] = selfCopy;
    v54[5] = v52;
    v54[6] = v48;
    [(NSFileCoordinator *)selfCopy _requestAccessClaim:v52 withProcedure:v54];

    [(NSAutoreleasePool *)v47 drain];
  }
}

uint64_t __109__NSFileCoordinator_NSPrivate____prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_byAccessor___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [a2 claimID];
  [*(a1 + 32) _forgetAccessClaimForID:v5];
  if (!atomic_fetch_add(&_NSFCSubarbitrationCount, 1uLL))
  {
    atomic_store([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")], _NSFCDisableLogSuppression);
  }

  v10 = *(a1 + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__NSFileCoordinator_NSPrivate____prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_byAccessor___block_invoke_3;
  v13[3] = &unk_1E69F7BB8;
  v11 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v11;
  v16 = v5;
  v17 = *(a1 + 48);
  return (*(v10 + 16))(v10, v14, a3, v13, v6, v7, v8, v9);
}

uint64_t __109__NSFileCoordinator_NSPrivate____prepareForReadingItemsAtURLs_options_writingItemsAtURLs_options_byAccessor___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (atomic_fetch_add(&_NSFCSubarbitrationCount, 0xFFFFFFFFFFFFFFFFLL) == 1 && atomic_exchange(&_NSFCSubarbitratedClaimCount, 0) >= 101)
  {
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v2 = qword_1ED440100;
    if (os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Resuming normal logging", v5, 2u);
    }
  }

  v3 = objc_alloc_init(NSAutoreleasePool);
  [*(a1 + 32) stopArbitrating];
  [*(*(a1 + 40) + 8) revokeSubarbitrationClaimForID:*(a1 + 48)];

  dispatch_release(*(a1 + 64));
  return [(NSAutoreleasePool *)v3 drain];
}

+ (void)__itemAtURL:(id)l didMoveToURL:(id)rL purposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v9 = objc_autoreleasePoolPush();
    -[NSFileAccessArbiterProxy writerWithPurposeID:didMoveItemAtURL:toURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didMoveItemAtURL:toURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]), +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", objc_msgSend(self, "_canonicalURLForURL:", rL)));

    objc_autoreleasePoolPop(v9);
  }
}

+ (void)__itemAtURL:(id)l didDisconnectWithPurposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didDisconnectItemAtURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didDisconnectItemAtURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]));

    [(NSAutoreleasePool *)v7 drain];
  }
}

+ (void)__itemAtURL:(id)l didReconnectWithPurposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didReconnectItemAtURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didReconnectItemAtURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]));

    [(NSAutoreleasePool *)v7 drain];
  }
}

+ (void)__itemAtURL:(id)l didChangeUbiquityWithPurposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didChangeUbiquityOfItemAtURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didChangeUbiquityOfItemAtURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]));

    [(NSAutoreleasePool *)v7 drain];
  }
}

+ (void)__itemAtURL:(id)l didDisappearWithPurposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didMakeItemDisappearAtURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didMakeItemDisappearAtURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]));

    [(NSAutoreleasePool *)v7 drain];
  }
}

+ (void)__itemAtURL:(id)l didChangeWithPurposeID:(id)d
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didChangeItemAtURL:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didChangeItemAtURL:", d, +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]));

    [(NSAutoreleasePool *)v7 drain];
  }
}

+ (void)__itemAtURL:(id)l didGainVersionWithClientID:(id)d name:(id)name purposeID:(id)iD
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:", iD, @"added", +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]), d, name);

    [(NSAutoreleasePool *)v11 drain];
  }
}

+ (void)__itemAtURL:(id)l didLoseVersionWithClientID:(id)d name:(id)name purposeID:(id)iD
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:", iD, @"removed", +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]), d, name);

    [(NSAutoreleasePool *)v11 drain];
  }
}

+ (void)__itemAtURL:(id)l didResolveConflictVersionWithClientID:(id)d name:(id)name purposeID:(id)iD
{
  if (!+[NSFileCoordinator _skipCoordinationWork])
  {
    v11 = objc_alloc_init(NSAutoreleasePool);
    -[NSFileAccessArbiterProxy writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:](NSFileCoordinatorSharedAccessArbiter(), "writerWithPurposeID:didVersionChangeOfKind:toItemAtURL:withClientID:name:", iD, @"resolved", +[NSURLPromisePair pairWithURL:](NSURLPromisePair, "pairWithURL:", [self _canonicalURLForURL:l]), d, name);

    [(NSAutoreleasePool *)v11 drain];
  }
}

+ (void)_addFileProvider:(id)provider completionHandler:(id)handler
{
  v6 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v6 addFileProvider:provider completionHandler:handler];
}

+ (void)_removeFileProvider:(id)provider
{
  v4 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v4 removeFileProvider:provider];
}

+ (id)_fileProviders
{
  v2 = NSFileCoordinatorSharedAccessArbiter();

  return [(NSFileAccessArbiterProxy *)v2 fileProviders];
}

+ (void)_setAutomaticFileProviderReregistrationDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v4 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v4 setAutomaticFileProviderReregistrationDisabled:disabledCopy];
}

- (void)_setFileProvider:(id)provider
{
  fileReactor = self->_fileReactor;
  if (fileReactor != provider)
  {

    providerCopy = provider;
    self->_fileReactor = providerCopy;
    v7 = [self->_accessArbiter idForFileReactor:providerCopy];
    if (v7)
    {

      [(NSFileCoordinator *)self setPurposeIdentifier:v7];
    }
  }
}

+ (BOOL)_itemHasPresentersAtURL:(id)l
{
  v4 = NSFileCoordinatorSharedAccessArbiter();

  return [(NSFileAccessArbiterProxy *)v4 itemHasPresentersAtURL:l];
}

- (void)_setPurposeIdentifier:(id)identifier
{
  purposeID = self->_purposeID;
  if (purposeID != identifier)
  {

    self->_purposeID = [identifier copy];

    [(NSFileCoordinator *)self _lockdownPurposeIdentifier];
  }
}

- (id)retainAccess
{
  v2 = *(NSFileCoordinatorGetTSD() + 8);
  TSD = NSFileCoordinatorGetTSD();
  v4 = *(TSD + 16);
  if (v2)
  {
    if (v4)
    {
      __assert_rtn("[NSFileCoordinator(NSPrivate) retainAccess]", "NSFileCoordinator.m", 1963, "NSFileCoordinatorGetTSD()->reacquisitionBlockCompletion == NULL");
    }

    goto LABEL_5;
  }

  v2 = *(TSD + 16);
  if (v4)
  {
LABEL_5:
    [v2 increment];
  }

  return v2;
}

+ (void)_getDebugInfoWithCompletionHandler:(id)handler
{
  v4 = qword_1ED440140;
  if (qword_1ED440140)
  {
    v5 = +[NSFileAccessArbiterProxy _fileReactorDebuggingInformation];
    v6 = getpid();

    [v4 getDebugInformationIncludingEverything:1 withString:v5 fromPid:v6 thenContinue:handler];
  }

  else
  {
    v7 = NSFileCoordinatorSharedAccessArbiter();

    [(NSFileAccessArbiterProxy *)v7 getDebugInfoWithCompletionHandler:handler];
  }
}

+ (void)_startInProcessFileCoordinationAndProgressServers
{
  if (!+[NSThread isMainThread])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileCoordinator.m" description:2104, @"%@ must be invoked on main thread.", NSStringFromSelector(a2)];
  }

  _NSFCIP = 1;
  v4 = qos_class_main();
  v5 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.FileCoordination.inProcessServerQueue", v6);
  if (!qword_1ED440140)
  {
    qword_1ED440168 = +[NSXPCListener anonymousListener];
    v8 = [NSFileAccessArbiter alloc];
    qword_1ED440140 = [(NSFileAccessArbiter *)v8 initWithQueue:v7 isSubarbiter:0 listener:qword_1ED440168];
    [qword_1ED440168 setDelegate:qword_1ED440140];
    [qword_1ED440168 resume];
  }

  if (!qword_1ED440170)
  {
    qword_1ED440178 = +[NSXPCListener anonymousListener];
    v9 = [NSProgressRegistrar alloc];
    qword_1ED440170 = -[NSProgressRegistrar initWithQueue:rootFileAccessNode:](v9, "initWithQueue:rootFileAccessNode:", v7, [qword_1ED440140 rootNode]);
    [qword_1ED440178 setDelegate:qword_1ED440170];
    [qword_1ED440178 resume];
  }

  dispatch_release(v7);

  NSFileCoordinatorSharedAccessArbiter();
}

+ (void)_stopInProcessFileCoordinationAndProgressServers
{
  if (!+[NSThread isMainThread])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileCoordinator.m" description:2141, @"%@ must be invoked on main thread.", NSStringFromSelector(a2)];
  }

  _NSFCIP = 0;

  qword_1ED440180 = 0;
  [qword_1ED440140 stopArbitrating];

  qword_1ED440140 = 0;
  [qword_1ED440168 invalidate];

  qword_1ED440168 = 0;
  qword_1ED440170 = 0;
  [qword_1ED440178 invalidate];

  qword_1ED440178 = 0;
}

+ (id)_createConnectionToFileAccessArbiterForQueue:(id)queue
{
  v4 = qword_1ED440168;
  v5 = [NSXPCConnection alloc];
  if (v4)
  {
    v6 = -[NSXPCConnection initWithListenerEndpoint:](v5, "initWithListenerEndpoint:", [qword_1ED440168 endpoint]);
  }

  else
  {
    v6 = [(NSXPCConnection *)v5 initWithMachServiceName:@"com.apple.FileCoordination" options:0];
  }

  v7 = v6;
  [(NSXPCConnection *)v6 setRemoteObjectInterface:+[NSFileCoordinator _fileAccessArbiterInterface]];
  [(NSXPCConnection *)v7 setOptions:4096];
  [(NSXPCConnection *)v7 _setQueue:queue];
  return v7;
}

+ (void)_adoptFCDEndpointForTest:(id)test
{
  v5 = qos_class_main();
  v6 = dispatch_queue_attr_make_with_qos_class(0, v5, 0);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.FileCoordination.test-connectionToInProcessServerQueue", v7);
  v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:test];
  -[NSXPCConnection setRemoteObjectInterface:](v9, "setRemoteObjectInterface:", [self _fileAccessArbiterInterface]);
  [(NSXPCConnection *)v9 _setQueue:v8];
  qword_1ED440180 = [[NSFileAccessArbiterProxy alloc] initWithServer:v9 queue:v8];
  [(NSXPCConnection *)v9 resume];

  dispatch_release(v8);
}

+ (id)_endpointForInProcessFileCoordinationServer
{
  if (!+[NSThread isMainThread])
  {
    __assert_rtn("+[NSFileCoordinator(NSInternal) _endpointForInProcessFileCoordinationServer]", "NSFileCoordinator.m", 2202, "[NSThread isMainThread]");
  }

  v2 = qword_1ED440168;
  if (!qword_1ED440168)
  {
    __assert_rtn("+[NSFileCoordinator(NSInternal) _endpointForInProcessFileCoordinationServer]", "NSFileCoordinator.m", 2203, "inProcessFileAccessArbiterListener");
  }

  return [v2 endpoint];
}

+ (void)_performBarrier
{
  v2 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v2 performBarrier];
}

+ (void)_performBarrierAsync:(id)async
{
  v4 = NSFileCoordinatorSharedAccessArbiter();

  [(NSFileAccessArbiterProxy *)v4 performBarrierAsync:async];
}

+ (void)_accessPresenterInfoUsingBlock:(id)block
{
  if (qword_1ED440190 != -1)
  {
    dispatch_once(&qword_1ED440190, &__block_literal_global_476);
  }

  os_unfair_lock_lock(&unk_1ED4400F0);
  (*(block + 2))(block, qword_1ED440188);

  os_unfair_lock_unlock(&unk_1ED4400F0);
}

uint64_t __85__NSFileCoordinator_NSFileProviderInternalAdditions___accessPresenterInfoUsingBlock___block_invoke()
{
  result = objc_opt_new();
  qword_1ED440188 = result;
  return result;
}

+ (void)_addProcessIdentifier:(int)identifier observedUbiquityAttributes:(id)attributes forID:(id)d
{
  v7 = *MEMORY[0x1E69E9840];
  if (identifier >= 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __109__NSFileCoordinator_NSFileProviderInternalAdditions___addProcessIdentifier_observedUbiquityAttributes_forID___block_invoke;
    v5[3] = &unk_1E69F7C08;
    identifierCopy = identifier;
    v5[4] = d;
    v5[5] = attributes;
    [self _accessPresenterInfoUsingBlock:v5];
  }
}

uint64_t __109__NSFileCoordinator_NSFileProviderInternalAdditions___addProcessIdentifier_observedUbiquityAttributes_forID___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*(a1 + 32)];
  if (!v4)
  {
    v4 = objc_opt_new();
    [a2 setObject:v4 forKey:*(a1 + 32)];
  }

  result = [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(a1 + 48)), @"pid"}];
  if (*(a1 + 40))
  {

    return [v4 setObject:? forKey:?];
  }

  return result;
}

+ (void)_removeInfoForID:(id)d
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__NSFileCoordinator_NSFileProviderInternalAdditions___removeInfoForID___block_invoke;
  v3[3] = &unk_1E69F7C30;
  v3[4] = d;
  [self _accessPresenterInfoUsingBlock:v3];
}

+ (void)_setKernelMaterializationInfo:(id)info
{
  if (*(NSFileCoordinatorGetTSD() + 48) != info)
  {

    infoCopy = info;
    *(NSFileCoordinatorGetTSD() + 48) = infoCopy;
  }
}

+ (void)_setCurrentClaimPurposeIdentifier:(id)identifier
{
  TSD = NSFileCoordinatorGetTSD();
  v5 = *(TSD + 40);
  if (v5 != identifier)
  {
    v6 = TSD;

    *(v6 + 40) = [identifier copy];
  }
}

+ (int)_processIdentifierForID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSFileCoordinator_NSFileProviderPrivateAdditions___processIdentifierForID___block_invoke;
  v5[3] = &unk_1E69F63D0;
  v5[4] = d;
  v5[5] = &v6;
  [self _accessPresenterInfoUsingBlock:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__77__NSFileCoordinator_NSFileProviderPrivateAdditions___processIdentifierForID___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{*(a1 + 32)), "objectForKey:", @"pid"}];
  if (result)
  {
    result = [result intValue];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

+ (id)_observedUbiquityAttributesForPresenterWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__NSFileCoordinator_NSFileProviderPrivateAdditions___observedUbiquityAttributesForPresenterWithID___block_invoke;
  v5[3] = &unk_1E69F6440;
  v5[4] = d;
  v5[5] = &v6;
  [self _accessPresenterInfoUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __99__NSFileCoordinator_NSFileProviderPrivateAdditions___observedUbiquityAttributesForPresenterWithID___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{*(a1 + 32)), "objectForKey:", @"ubiquityAttributes"}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (unsigned)_kernelMaterializationOperation
{
  if (!*(NSFileCoordinatorGetTSD() + 48))
  {
    return 0;
  }

  v2 = *(NSFileCoordinatorGetTSD() + 48);

  return [v2 operation];
}

+ (unint64_t)_responsesForPresenter:(id)presenter
{
  v3 = objc_opt_respondsToSelector();
  if (objc_opt_respondsToSelector())
  {
    v4 = v3 & 1 | 2;
  }

  else
  {
    v4 = v3 & 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 4uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 8uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x10uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x20uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x40uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x80uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x100uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x200uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x400uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x800uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x1000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x2000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x4000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 |= 0x8000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = v4 | 0x10000;
  }

  else
  {
    v5 = v4;
  }

  v16 = objc_opt_respondsToSelector();
  v15 = objc_opt_respondsToSelector();
  v6 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  v11 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  v13 = objc_opt_respondsToSelector();
  if (((objc_opt_respondsToSelector() | v13 | v12 | v11 | v10 | v9 | v8) | (v7 | v6 | v15 | v16)))
  {
    return v5 | 0xFFFFFFFF80000000;
  }

  else
  {
    return v5;
  }
}

@end