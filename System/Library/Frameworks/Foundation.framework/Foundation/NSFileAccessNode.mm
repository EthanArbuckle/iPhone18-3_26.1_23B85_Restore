@interface NSFileAccessNode
- (BOOL)_mayContainCriticalDebuggingInformationExcludingReactors:(BOOL)reactors;
- (BOOL)itemIsFilePackage;
- (BOOL)itemIsInItemAtLocation:(id)location;
- (BOOL)itemIsItemAtLocation:(id)location;
- (BOOL)itemIsSubarbitrable;
- (BOOL)setProvider:(id)provider;
- (NSFileAccessNode)initWithParent:(id)parent name:(id)name normalizedName:(id)normalizedName;
- (id)_childrenExcludingExcessNodes:(BOOL)nodes excludingReactors:(BOOL)reactors;
- (id)biggestFilePackageLocation;
- (id)childForRange:(_NSRange)range ofPath:(id)path;
- (id)descendantAtPath:(id)path componentRange:(_NSRange)range forAddingLeafNode:(id)node create:(BOOL)create;
- (id)descendantForFileURL:(id)l;
- (id)descriptionWithIndenting:(id)indenting excludingExcessNodes:(BOOL)nodes excludingReactors:(BOOL)reactors;
- (id)itemProvider;
- (id)pathExceptPrivate;
- (id)pathFromAncestor:(id)ancestor;
- (id)pathToDescendantForFileURL:(id)l componentRange:(_NSRange *)range;
- (id)standardizedURL;
- (id)url;
- (id)urlOfSubitemAtPath:(id)path plusPath:(id)plusPath;
- (void)_forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter:(BOOL)superarbiter performProcedure:(id)procedure;
- (void)_setLinkDestination:(id)destination;
- (void)addAccessClaim:(id)claim;
- (void)addPresenter:(id)presenter;
- (void)addProgressPublisher:(id)publisher;
- (void)addProgressSubscriber:(id)subscriber;
- (void)assertDead;
- (void)assertDescendantsLive;
- (void)assertLive;
- (void)dealloc;
- (void)forEachAccessClaimOnItemOrContainedItemPerformProcedure:(id)procedure;
- (void)forEachAccessClaimOnItemPerformProcedure:(id)procedure;
- (void)forEachDescendantPerformProcedure:(id)procedure;
- (void)forEachPresenterOfContainedItemPerformProcedure:(id)procedure;
- (void)forEachPresenterOfContainingFilePackagePerformProcedure:(id)procedure;
- (void)forEachPresenterOfContainingItemPerformProcedure:(id)procedure;
- (void)forEachPresenterOfItemOrContainedItemPerformProcedure:(id)procedure;
- (void)forEachPresenterOfItemOrContainingItemPerformProcedure:(id)procedure;
- (void)forEachPresenterOfItemPerformProcedure:(id)procedure;
- (void)forEachProgressPublisherOfItemOrContainedItemPerformProcedure:(id)procedure;
- (void)forEachProgressPublisherOfItemPerformProcedure:(id)procedure;
- (void)forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:(id)procedure;
- (void)forEachProgressSubscriberOfItemPerformProcedure:(id)procedure;
- (void)forEachProgressThingOfItemOrContainedItemPerformProcedure:(id)procedure;
- (void)forEachReactorToItemOrContainedItemPerformProcedure:(id)procedure;
- (void)forEachRelevantAccessClaimForEvaluatingAgainstClaim:(id)claim performProcedure:(id)procedure;
- (void)removeAccessClaim:(id)claim;
- (void)removeChildForNormalizedName:(id)name;
- (void)removePresenter:(id)presenter;
- (void)removeProgressPublisher:(id)publisher;
- (void)removeProgressSubscriber:(id)subscriber;
- (void)removeProvider:(id)provider;
- (void)removeSelfIfUseless;
- (void)setChild:(id)child forName:(id)name normalizedName:(id)normalizedName;
- (void)setParent:(id)parent name:(id)name;
@end

@implementation NSFileAccessNode

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileAccessNode;
  [(NSFileAccessNode *)&v3 dealloc];
}

- (id)itemProvider
{
  if (!self)
  {
    return 0;
  }

  while (1)
  {
    provider = self->_provider;
    if (provider)
    {
      break;
    }

    self = self->_parent;
    if (!self)
    {
      return 0;
    }
  }

  return provider;
}

- (id)biggestFilePackageLocation
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v3 = 0;
  do
  {
    if ([(NSFileAccessNode *)selfCopy itemIsFilePackage])
    {
      v3 = selfCopy;
    }

    selfCopy = selfCopy->_parent;
  }

  while (selfCopy);
  return v3;
}

- (BOOL)itemIsFilePackage
{
  if (!self->_isFilePackageIsFigured)
  {
    pathExtension = [(NSString *)self->_name pathExtension];
    if ([(NSString *)pathExtension rangeOfString:@"weakpkg" options:1]== 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_isFilePackage = 0;
      parent = self->_parent;
      if (!parent || ![(NSString *)parent->_normalizedName isEqualToString:@"volumes"]|| (v5 = self->_parent->_parent) == 0 || ![(NSString *)v5->_normalizedName isEqualToString:@"/"])
      {
        if ([(NSString *)pathExtension length])
        {
          if (qword_1ED4401D0 != -1)
          {
            dispatch_once(&qword_1ED4401D0, &__block_literal_global_79);
          }

          v6 = _MergedGlobals_148(qword_1ED4401C0, pathExtension, 0);
          if (v6)
          {
            v7 = v6;
            self->_isFilePackage = off_1ED4401B8(v6, qword_1ED4401C8) != 0;
            CFRelease(v7);
          }
        }
      }
    }

    else
    {
      self->_isFilePackage = 1;
    }

    self->_isFilePackageIsFigured = 1;
  }

  return self->_isFilePackage;
}

- (void)removeSelfIfUseless
{
  if (!self->_symbolicLinkDestination && !self->_symbolicLinkReferenceCount && ![(NSMutableDictionary *)self->_childrenByNormalizedName count]&& !self->_presenterOrPresenters && !self->_provider && !self->_accessClaimOrClaims && !self->_isArbitrationBoundary && !self->_progressPublisherOrPublishers && !self->_progressSubscriberOrSubscribers)
  {
    parent = self->_parent;
    normalizedName = self->_normalizedName;

    [(NSFileAccessNode *)parent removeChildForNormalizedName:normalizedName];
  }
}

- (id)url
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [NSString pathWithComponents:[(NSFileAccessNode *)self pathFromAncestor:0]];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  if (!v3)
  {
    v4 = _NSFCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode url] is returning nil.", v6, 2u);
    }
  }

  return v3;
}

- (NSFileAccessNode)initWithParent:(id)parent name:(id)name normalizedName:(id)normalizedName
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSFileAccessNode;
  v8 = [(NSFileAccessNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_parent = parent;
    v8->_name = [name copy];
    v9->_normalizedName = [normalizedName copy];
  }

  return v9;
}

- (void)_setLinkDestination:(id)destination
{
  symbolicLinkDestination = self->_symbolicLinkDestination;
  if (symbolicLinkDestination != destination)
  {
    if (symbolicLinkDestination)
    {
      --symbolicLinkDestination->_symbolicLinkReferenceCount;
    }

    v6 = symbolicLinkDestination;
    if (destination)
    {
      destinationCopy = destination;
      self->_symbolicLinkDestination = destinationCopy;
      ++destinationCopy->_symbolicLinkReferenceCount;
    }

    else
    {
      self->_symbolicLinkDestination = 0;
      [(NSFileAccessNode *)self removeSelfIfUseless];
    }

    [(NSFileAccessNode *)v6 removeSelfIfUseless];
  }
}

- (id)pathToDescendantForFileURL:(id)l componentRange:(_NSRange *)range
{
  v16 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_normalizedName isEqualToString:@"/"])
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "[NSFileAccessNode pathToDescendantForFileURL:componentRange:] was invoked in a surprising way.", &v14, 2u);
    }

    return 0;
  }

  if (![l isFileURL])
  {
    v11 = _NSFCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      lCopy3 = l;
      v12 = "NSFileCoordinator only handles URLs that use the file: scheme. This one does not:\n%{private}@";
LABEL_15:
      _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
    }

    return 0;
  }

  v6 = [objc_msgSend(l "path")];
  if (!v6)
  {
    v11 = _NSFCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      lCopy3 = l;
      v12 = "NSFileCoordinator does not handle NSURLs that return nil when sent -path, like this one:\n%{private}@";
      goto LABEL_15;
    }

    return 0;
  }

  v7 = v6;
  v8 = [v6 count];
  if (!v8 || (v9 = v8, ![objc_msgSend(v7 objectAtIndex:{0), "isEqualToString:", @"/"}]))
  {
    v11 = _NSFCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      lCopy3 = l;
      v12 = "NSFileCoordinator does not handle NSURLs that return relative paths when sent -path, like this one:\n%{private}@";
      goto LABEL_15;
    }

    return 0;
  }

  range->location = 1;
  range->length = v9 - 1;
  return v7;
}

- (void)setChild:(id)child forName:(id)name normalizedName:(id)normalizedName
{
  childrenByNormalizedName = self->_childrenByNormalizedName;
  if (childrenByNormalizedName)
  {
    name = [(NSMutableDictionary *)childrenByNormalizedName objectForKey:normalizedName, name];
    if (name)
    {
      v10 = name == child;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      name[1] = 0;
    }
  }

  else
  {
    self->_childrenByNormalizedName = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [(NSMutableDictionary *)self->_childrenByNormalizedName setObject:child forKey:normalizedName];

  self->_lastRequestedChildName = 0;
  self->_lastRequestedChild = 0;
}

- (void)removeChildForNormalizedName:(id)name
{
  v5 = [(NSMutableDictionary *)self->_childrenByNormalizedName objectForKey:?];
  if (v5)
  {
    if (*(v5 + 8) == self)
    {
      *(v5 + 8) = 0;
    }

    [(NSMutableDictionary *)self->_childrenByNormalizedName removeObjectForKey:name];
  }

  self->_lastRequestedChildName = 0;
  self->_lastRequestedChild = 0;

  [(NSFileAccessNode *)self removeSelfIfUseless];
}

- (id)descendantAtPath:(id)path componentRange:(_NSRange)range forAddingLeafNode:(id)node create:(BOOL)create
{
  if (!range.length)
  {
    goto LABEL_13;
  }

  createCopy = create;
  length = range.length;
  location = range.location;
  v12 = _canonicalStringRepresentation([path objectAtIndex:range.location]);
  v13 = [(NSFileAccessNode *)self normalizationOfChildName:v12];
  v14 = [(NSMutableDictionary *)self->_childrenByNormalizedName objectForKey:v13];
  if (v14)
  {
    if (*(v14 + 32))
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = v14;
    }

    if (v15 != node)
    {
      goto LABEL_9;
    }

    v16 = v15;
  }

  v15 = 0;
LABEL_9:
  if (!v15 && createCopy)
  {
    v15 = [[NSFileAccessNode alloc] initWithParent:self name:v12 normalizedName:v13];
    [(NSFileAccessNode *)self setChild:v15 forName:v12 normalizedName:v15->_normalizedName];
  }

  self = [(NSFileAccessNode *)v15 descendantAtPath:path componentRange:location + 1 forAddingLeafNode:length - 1 create:node, createCopy];
LABEL_13:
  if (self && self->_symbolicLinkIsFirmlink)
  {
    self = self->_symbolicLinkDestination;
  }

  selfCopy = self;

  return selfCopy;
}

- (id)childForRange:(_NSRange)range ofPath:(id)path
{
  length = range.length;
  location = range.location;
  if (range.length == 2)
  {
    if ([path characterAtIndex:range.location] == 46 && objc_msgSend(path, "characterAtIndex:", location + 1) == 46)
    {
      return self->_parent;
    }
  }

  else if (range.length == 1 && [path characterAtIndex:range.location] == 46)
  {
    return self;
  }

  lastRequestedChildName = self->_lastRequestedChildName;
  if (lastRequestedChildName && ![path compare:lastRequestedChildName options:2 range:{location, length}])
  {
    return self->_lastRequestedChild;
  }

  v9 = [path substringWithRange:{location, length}];
  v10 = [(NSFileAccessNode *)self normalizationOfChildName:v9];
  v11 = [(NSMutableDictionary *)self->_childrenByNormalizedName objectForKey:v10];
  if (!v11)
  {
    v11 = [[NSFileAccessNode alloc] initWithParent:self name:v9 normalizedName:v10];
    [(NSFileAccessNode *)self setChild:v11 forName:v9 normalizedName:v11->_normalizedName];
  }

  self->_lastRequestedChildName = v9;
  self->_lastRequestedChild = v11;
  return v11;
}

- (id)descendantForFileURL:(id)l
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_normalizedName isEqualToString:@"/"])
  {
    NSLog(@"[NSFileAccessNode pathToDescendantForFileURL:componentRange:] was invoked in a surprising way.");
    return 0;
  }

  if (![l isFileURL])
  {
    v16 = _NSFCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138477827;
      lCopy3 = l;
      v17 = "NSFileCoordinator only handles URLs that use the file: scheme. This one does not:\n%{private}@";
LABEL_27:
      _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
    }

    return 0;
  }

  v5 = _canonicalStringRepresentation([l path]);
  if (!v5)
  {
    v16 = _NSFCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138477827;
      lCopy3 = l;
      v17 = "NSFileCoordinator does not handle NSURLs that return nil when sent -path, like this one:\n%{private}@";
      goto LABEL_27;
    }

    return 0;
  }

  v6 = v5;
  v7 = [v5 length];
  if (!v7 || (v8 = v7, [v6 characterAtIndex:0] != 47))
  {
    v16 = _NSFCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138477827;
      lCopy3 = l;
      v17 = "NSFileCoordinator does not handle NSURLs that return relative or empty paths when sent -path, like this one:\n%{private}@";
      goto LABEL_27;
    }

    return 0;
  }

  v9 = v8 - 1;
  if (v8 != 1)
  {
    v10 = 1;
    while (1)
    {
      if (selfCopy->_symbolicLinkDestination)
      {
        selfCopy = selfCopy->_symbolicLinkDestination;
      }

      v11 = [v6 rangeOfString:@"/" options:0 range:{v10, v9}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      if (v11 != v10)
      {
        selfCopy = [(NSFileAccessNode *)selfCopy childForRange:v10 ofPath:v11 - v10, v6];
      }

      v10 = v13 + v14;
      v9 = v8 - (v13 + v14);
      if (selfCopy)
      {
        v15 = v8 == v13 + v14;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (selfCopy)
        {
          goto LABEL_31;
        }

        return selfCopy;
      }
    }

    selfCopy = [(NSFileAccessNode *)selfCopy childForRange:v10 ofPath:v9, v6];
    if (!selfCopy)
    {
      return selfCopy;
    }
  }

LABEL_31:
  if (selfCopy->_symbolicLinkIsFirmlink)
  {
    return selfCopy->_symbolicLinkDestination;
  }

  return selfCopy;
}

- (id)pathFromAncestor:(id)ancestor
{
  if (self == ancestor)
  {
    v8 = MEMORY[0x1E695DEC8];

    return [v8 array];
  }

  else
  {
    parent = self->_parent;
    if (parent)
    {
      v5 = [(NSFileAccessNode *)parent pathFromAncestor:?];
      name = self->_name;

      return [v5 arrayByAddingObject:name];
    }

    else
    {
      v9 = MEMORY[0x1E695DEC8];
      v10 = self->_name;

      return [v9 arrayWithObject:v10];
    }
  }
}

- (void)setParent:(id)parent name:(id)name
{
  v7 = [(NSFileAccessNode *)self normalizationOfChildName:name];
  [parent setChild:self forName:name normalizedName:v7];
  [(NSFileAccessNode *)self->_parent removeChildForNormalizedName:self->_normalizedName];
  name = self->_name;
  if (name != name)
  {

    self->_name = [name copy];
    self->_normalizedName = v7;
    self->_isFilePackageIsFigured = 0;
  }

  self->_parent = parent;
}

void __37__NSFileAccessNode_itemIsFilePackage__block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 256);
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_148 = dlsym(v0, "UTTypeCreatePreferredIdentifierForTag");
    off_1ED4401B8 = dlsym(v1, "UTTypeConformsTo");
    qword_1ED4401C0 = *dlsym(v1, "kUTTagClassFilenameExtension");
    v2 = *dlsym(v1, "kUTTypePackage");
    qword_1ED4401C8 = v2;
    if (_MergedGlobals_148)
    {
      v3 = off_1ED4401B8 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3 || qword_1ED4401C0 == 0 || v2 == 0)
    {
      NSLog(@"[NSFileAccessNode itemIsFilePackage] couldn't load a MobileCoreServices symbol.");
    }
  }
}

- (void)forEachDescendantPerformProcedure:(id)procedure
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childrenByNormalizedName = self->_childrenByNormalizedName;
  v6 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(childrenByNormalizedName);
        }

        v10 = [(NSMutableDictionary *)self->_childrenByNormalizedName objectForKey:*(*(&v12 + 1) + 8 * i)];
        (*(procedure + 2))(procedure, v10);
        [v10 forEachDescendantPerformProcedure:procedure];
      }

      v7 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)forEachAccessClaimOnItemPerformProcedure:(id)procedure
{
  v16 = *MEMORY[0x1E69E9840];
  if (_NSIsNSSet())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    accessClaimOrClaims = self->_accessClaimOrClaims;
    v6 = [accessClaimOrClaims countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(accessClaimOrClaims);
          }

          (*(procedure + 2))(procedure, *(*(&v12 + 1) + 8 * i));
        }

        v7 = [accessClaimOrClaims countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }
  }

  else if (self->_accessClaimOrClaims)
  {
    v10 = *(procedure + 2);

    v10(procedure);
  }
}

- (void)_forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter:(BOOL)superarbiter performProcedure:(id)procedure
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  biggestFilePackageLocation = [(NSFileAccessNode *)self->_parent biggestFilePackageLocation];
  if (biggestFilePackageLocation)
  {
    selfCopy = biggestFilePackageLocation;
  }

  parent = selfCopy->_parent;
  if (parent)
  {
    v9 = MEMORY[0x1E69E9820];
    do
    {
      v12[0] = v9;
      v12[1] = 3221225472;
      v12[2] = __96__NSFileAccessNode__forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter_performProcedure___block_invoke;
      v12[3] = &unk_1E69F99E8;
      superarbiterCopy = superarbiter;
      v12[4] = procedure;
      [(NSFileAccessNode *)parent forEachAccessClaimOnItemPerformProcedure:v12];
      parent = parent->_parent;
    }

    while (parent);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__NSFileAccessNode__forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter_performProcedure___block_invoke_2;
  v10[3] = &unk_1E69F9A10;
  superarbiterCopy2 = superarbiter;
  v10[4] = procedure;
  [(NSFileAccessNode *)selfCopy forEachAccessClaimOnItemOrContainedItemPerformProcedure:v10];
}

uint64_t __96__NSFileAccessNode__forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter_performProcedure___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 cameFromSuperarbiter], (result & 1) == 0))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t __96__NSFileAccessNode__forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter_performProcedure___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 cameFromSuperarbiter], (result & 1) == 0))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)forEachRelevantAccessClaimForEvaluatingAgainstClaim:(id)claim performProcedure:(id)procedure
{
  cameFromSuperarbiter = [claim cameFromSuperarbiter];

  [(NSFileAccessNode *)self _forEachRelevantAccessClaimExcludingClaimsFromSuperarbiter:cameFromSuperarbiter performProcedure:procedure];
}

- (void)forEachReactorToItemOrContainedItemPerformProcedure:(id)procedure
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (self->_provider)
  {
    (*(procedure + 2))(procedure);
  }

  [(NSFileAccessNode *)self forEachPresenterOfItemPerformProcedure:procedure];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__NSFileAccessNode_forEachReactorToItemOrContainedItemPerformProcedure___block_invoke;
  v5[3] = &unk_1E69F9A38;
  v5[4] = procedure;
  [(NSFileAccessNode *)self forEachDescendantPerformProcedure:v5];
}

uint64_t __72__NSFileAccessNode_forEachReactorToItemOrContainedItemPerformProcedure___block_invoke(uint64_t a1, void *a2)
{
  if (a2[8])
  {
    (*(*(a1 + 32) + 16))();
  }

  v4 = *(a1 + 32);

  return [a2 forEachPresenterOfItemPerformProcedure:v4];
}

- (void)forEachPresenterOfContainingFilePackagePerformProcedure:(id)procedure
{
  v5[6] = *MEMORY[0x1E69E9840];
  for (i = self->_parent; i; i = i->_parent)
  {
    if ([(NSFileAccessNode *)i itemIsFilePackage])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __76__NSFileAccessNode_forEachPresenterOfContainingFilePackagePerformProcedure___block_invoke;
      v5[3] = &unk_1E69F9A60;
      v5[4] = i;
      v5[5] = procedure;
      [(NSFileAccessNode *)i forEachPresenterOfItemPerformProcedure:v5];
    }
  }
}

- (void)forEachPresenterOfItemPerformProcedure:(id)procedure
{
  v16 = *MEMORY[0x1E69E9840];
  if (_NSIsNSSet())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    presenterOrPresenters = self->_presenterOrPresenters;
    v6 = [presenterOrPresenters countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(presenterOrPresenters);
          }

          (*(procedure + 2))(procedure, *(*(&v12 + 1) + 8 * i));
        }

        v7 = [presenterOrPresenters countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }
  }

  else if (self->_presenterOrPresenters)
  {
    v10 = *(procedure + 2);

    v10(procedure);
  }
}

- (void)forEachPresenterOfContainedItemPerformProcedure:(id)procedure
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__NSFileAccessNode_forEachPresenterOfContainedItemPerformProcedure___block_invoke;
  v3[3] = &unk_1E69F9A38;
  v3[4] = procedure;
  [(NSFileAccessNode *)self forEachDescendantPerformProcedure:v3];
}

uint64_t __68__NSFileAccessNode_forEachPresenterOfContainedItemPerformProcedure___block_invoke(uint64_t a1, void *a2)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__NSFileAccessNode_forEachPresenterOfContainedItemPerformProcedure___block_invoke_2;
  v3[3] = &unk_1E69F82B0;
  v3[4] = *(a1 + 32);
  return [a2 forEachPresenterOfItemPerformProcedure:v3];
}

- (void)forEachPresenterOfItemOrContainedItemPerformProcedure:(id)procedure
{
  [(NSFileAccessNode *)self forEachPresenterOfItemPerformProcedure:?];

  [(NSFileAccessNode *)self forEachPresenterOfContainedItemPerformProcedure:procedure];
}

- (void)forEachPresenterOfItemOrContainingItemPerformProcedure:(id)procedure
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v6[0] = v5;
      v6[1] = 3221225472;
      v6[2] = __75__NSFileAccessNode_forEachPresenterOfItemOrContainingItemPerformProcedure___block_invoke;
      v6[3] = &unk_1E69F9A60;
      v6[4] = selfCopy;
      v6[5] = procedure;
      [(NSFileAccessNode *)selfCopy forEachPresenterOfItemPerformProcedure:v6];
      selfCopy = selfCopy->_parent;
    }

    while (selfCopy);
  }
}

- (void)forEachPresenterOfContainingItemPerformProcedure:(id)procedure
{
  v6[5] = *MEMORY[0x1E69E9840];
  parent = self->_parent;
  if (parent)
  {
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v6[0] = v5;
      v6[1] = 3221225472;
      v6[2] = __69__NSFileAccessNode_forEachPresenterOfContainingItemPerformProcedure___block_invoke;
      v6[3] = &unk_1E69F82B0;
      v6[4] = procedure;
      [(NSFileAccessNode *)parent forEachPresenterOfItemPerformProcedure:v6];
      parent = parent->_parent;
    }

    while (parent);
  }
}

- (void)forEachAccessClaimOnItemOrContainedItemPerformProcedure:(id)procedure
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__NSFileAccessNode_forEachAccessClaimOnItemOrContainedItemPerformProcedure___block_invoke;
  v6[3] = &unk_1E69F9A88;
  v6[4] = self;
  v6[5] = procedure;
  [(NSFileAccessNode *)self forEachAccessClaimOnItemPerformProcedure:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__NSFileAccessNode_forEachAccessClaimOnItemOrContainedItemPerformProcedure___block_invoke_2;
  v5[3] = &unk_1E69F9A38;
  v5[4] = procedure;
  [(NSFileAccessNode *)self forEachDescendantPerformProcedure:v5];
}

uint64_t __76__NSFileAccessNode_forEachAccessClaimOnItemOrContainedItemPerformProcedure___block_invoke_2(uint64_t a1, void *a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__NSFileAccessNode_forEachAccessClaimOnItemOrContainedItemPerformProcedure___block_invoke_3;
  v4[3] = &unk_1E69F9A88;
  v2 = *(a1 + 32);
  v4[4] = a2;
  v4[5] = v2;
  return [a2 forEachAccessClaimOnItemPerformProcedure:v4];
}

- (BOOL)itemIsSubarbitrable
{
  if (self)
  {
    selfCopy = self;
    do
    {
      LOBYTE(self) = selfCopy->_isArbitrationBoundary;
      if (self)
      {
        break;
      }

      selfCopy = selfCopy->_parent;
    }

    while (selfCopy);
  }

  return self;
}

- (BOOL)itemIsItemAtLocation:(id)location
{
  if (location == self)
  {
    goto LABEL_7;
  }

  biggestFilePackageLocation = [(NSFileAccessNode *)self biggestFilePackageLocation];
  if (!biggestFilePackageLocation)
  {
    return biggestFilePackageLocation;
  }

  if (biggestFilePackageLocation == location)
  {
LABEL_7:
    LOBYTE(biggestFilePackageLocation) = 1;
    return biggestFilePackageLocation;
  }

  LOBYTE(biggestFilePackageLocation) = [location itemIsInItemAtLocation:biggestFilePackageLocation];
  return biggestFilePackageLocation;
}

- (BOOL)itemIsInItemAtLocation:(id)location
{
  do
  {
    self = self->_parent;
  }

  while (self != location && self != 0);
  return self != 0;
}

- (void)addPresenter:(id)presenter
{
  if (self->_presenterOrPresenters)
  {
    if (_NSIsNSSet())
    {
      presenterOrPresenters = self->_presenterOrPresenters;

      [presenterOrPresenters addObject:presenter];
    }

    else
    {
      v6 = self->_presenterOrPresenters;
      self->_presenterOrPresenters = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, presenter, 0}];
    }
  }

  else
  {
    self->_presenterOrPresenters = presenter;
  }
}

- (void)removePresenter:(id)presenter
{
  presenterOrPresenters = self->_presenterOrPresenters;
  if (presenterOrPresenters == presenter)
  {
    goto LABEL_5;
  }

  if (_NSIsNSSet())
  {
    [self->_presenterOrPresenters removeObject:presenter];
    if (![self->_presenterOrPresenters count])
    {
      presenterOrPresenters = self->_presenterOrPresenters;
LABEL_5:

      self->_presenterOrPresenters = 0;
    }
  }

  [(NSFileAccessNode *)self removeSelfIfUseless];
}

- (BOOL)setProvider:(id)provider
{
  providerCopy = provider;
  v15 = *MEMORY[0x1E69E9840];
  if (!provider)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessNode.m" description:881, @"Invalid parameter not satisfying: %@", @"inProvider != nil"];
    goto LABEL_12;
  }

  provider = self->_provider;
  if (provider == provider)
  {
    goto LABEL_11;
  }

  if (provider)
  {
    secureID = [(NSFileProviderProxy *)provider secureID];
    secureID2 = [providerCopy secureID];
    if (([secureID2 isEqualToString:secureID] & 1) == 0 && (!secureID2 || secureID) && _NSFCIP != 1)
    {
      v8 = _NSFCProviderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [-[NSFileReactorProxy client](self->_provider "client")];
        *buf = 67109376;
        v12 = v9;
        v13 = 1024;
        v14 = [objc_msgSend(providerCopy "client")];
        _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode setProvider:] was invoked for a node that already has a provider (pid %d). Ignoring the new one (pid %d).", buf, 0xEu);
      }

LABEL_11:
      LOBYTE(providerCopy) = 0;
      goto LABEL_12;
    }
  }

  [(NSFileProviderProxy *)self->_provider setItemLocation:0];

  self->_provider = providerCopy;
  LOBYTE(providerCopy) = 1;
LABEL_12:
  [(NSFileAccessNode *)self removeSelfIfUseless];
  return providerCopy;
}

- (void)removeProvider:(id)provider
{
  provider = self->_provider;
  if (provider == provider)
  {

    self->_provider = 0;
  }
}

- (void)addAccessClaim:(id)claim
{
  if (self->_accessClaimOrClaims)
  {
    if (_NSIsNSSet())
    {
      accessClaimOrClaims = self->_accessClaimOrClaims;

      [accessClaimOrClaims addObject:claim];
    }

    else
    {
      v6 = self->_accessClaimOrClaims;
      self->_accessClaimOrClaims = [[NSCountedSet alloc] initWithObjects:v6, claim, 0];
    }
  }

  else
  {
    self->_accessClaimOrClaims = claim;
  }
}

- (void)removeAccessClaim:(id)claim
{
  accessClaimOrClaims = self->_accessClaimOrClaims;
  if (accessClaimOrClaims == claim)
  {
    goto LABEL_5;
  }

  if (_NSIsNSSet())
  {
    [self->_accessClaimOrClaims removeObject:claim];
    if (![self->_accessClaimOrClaims count])
    {
      accessClaimOrClaims = self->_accessClaimOrClaims;
LABEL_5:

      self->_accessClaimOrClaims = 0;
    }
  }

  [(NSFileAccessNode *)self removeSelfIfUseless];
}

- (id)pathExceptPrivate
{
  if (self->_parent)
  {
    v3 = [(NSString *)self->_name isEqualToString:@"private"];
    parent = self->_parent;
    v5 = !v3 || parent == 0;
    if (v5 || parent->_parent)
    {
      pathExceptPrivate = [(NSFileAccessNode *)parent pathExceptPrivate];
      name = self->_name;

      return [pathExceptPrivate arrayByAddingObject:name];
    }

    else
    {

      return [(NSFileAccessNode *)parent pathExceptPrivate];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    v10 = self->_name;

    return [v9 arrayWithObject:v10];
  }
}

- (id)standardizedURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [NSString pathWithComponents:[(NSFileAccessNode *)self pathExceptPrivate]];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  if (!v3)
  {
    v4 = _NSFCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode standardizedURL] is returning nil.", v6, 2u);
    }
  }

  return v3;
}

- (id)urlOfSubitemAtPath:(id)path plusPath:(id)plusPath
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [(NSFileAccessNode *)self pathFromAncestor:0];
  v7 = v6;
  if (path)
  {
    v7 = [v6 arrayByAddingObjectsFromArray:path];
  }

  if (plusPath)
  {
    v7 = [v7 arrayByAddingObjectsFromArray:plusPath];
  }

  v8 = [NSString pathWithComponents:v7];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  if (!v9)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode urlOfSubitemAtPath:plusPath:] is returning nil.", v12, 2u);
    }
  }

  return v9;
}

- (void)addProgressPublisher:(id)publisher
{
  if (self->_progressPublisherOrPublishers)
  {
    if (_NSIsNSSet())
    {
      progressPublisherOrPublishers = self->_progressPublisherOrPublishers;

      [progressPublisherOrPublishers addObject:publisher];
    }

    else
    {
      v6 = self->_progressPublisherOrPublishers;
      self->_progressPublisherOrPublishers = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, publisher, 0}];
    }
  }

  else
  {
    self->_progressPublisherOrPublishers = publisher;
  }
}

- (void)removeProgressPublisher:(id)publisher
{
  progressPublisherOrPublishers = self->_progressPublisherOrPublishers;
  if (progressPublisherOrPublishers == publisher)
  {
    goto LABEL_5;
  }

  if (_NSIsNSSet())
  {
    [self->_progressPublisherOrPublishers removeObject:publisher];
    if (![self->_progressPublisherOrPublishers count])
    {
      progressPublisherOrPublishers = self->_progressPublisherOrPublishers;
LABEL_5:

      self->_progressPublisherOrPublishers = 0;
    }
  }

  [(NSFileAccessNode *)self removeSelfIfUseless];
}

- (void)addProgressSubscriber:(id)subscriber
{
  if (self->_progressSubscriberOrSubscribers)
  {
    if (_NSIsNSSet())
    {
      progressSubscriberOrSubscribers = self->_progressSubscriberOrSubscribers;

      [progressSubscriberOrSubscribers addObject:subscriber];
    }

    else
    {
      v6 = self->_progressSubscriberOrSubscribers;
      self->_progressSubscriberOrSubscribers = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, subscriber, 0}];
    }
  }

  else
  {
    self->_progressSubscriberOrSubscribers = subscriber;
  }
}

- (void)removeProgressSubscriber:(id)subscriber
{
  progressSubscriberOrSubscribers = self->_progressSubscriberOrSubscribers;
  if (progressSubscriberOrSubscribers == subscriber)
  {
    goto LABEL_5;
  }

  if (_NSIsNSSet())
  {
    [self->_progressSubscriberOrSubscribers removeObject:subscriber];
    if (![self->_progressSubscriberOrSubscribers count])
    {
      progressSubscriberOrSubscribers = self->_progressSubscriberOrSubscribers;
LABEL_5:

      self->_progressSubscriberOrSubscribers = 0;
    }
  }

  [(NSFileAccessNode *)self removeSelfIfUseless];
}

- (void)forEachProgressPublisherOfItemPerformProcedure:(id)procedure
{
  v16 = *MEMORY[0x1E69E9840];
  if (_NSIsNSSet())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    progressPublisherOrPublishers = self->_progressPublisherOrPublishers;
    v6 = [progressPublisherOrPublishers countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(progressPublisherOrPublishers);
          }

          (*(procedure + 2))(procedure, *(*(&v12 + 1) + 8 * i));
        }

        v7 = [progressPublisherOrPublishers countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }
  }

  else if (self->_progressPublisherOrPublishers)
  {
    v10 = *(procedure + 2);

    v10(procedure);
  }
}

- (void)forEachProgressPublisherOfItemOrContainedItemPerformProcedure:(id)procedure
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSFileAccessNode *)self forEachProgressPublisherOfItemPerformProcedure:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  childrenByNormalizedName = self->_childrenByNormalizedName;
  v6 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(childrenByNormalizedName);
        }

        [-[NSMutableDictionary objectForKey:](self->_childrenByNormalizedName objectForKey:{*(*(&v11 + 1) + 8 * i)), "forEachProgressPublisherOfItemPerformProcedure:", procedure}];
      }

      v7 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)forEachProgressSubscriberOfItemPerformProcedure:(id)procedure
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (_NSIsNSSet())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    progressSubscriberOrSubscribers = self->_progressSubscriberOrSubscribers;
    v7 = [progressSubscriberOrSubscribers countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(progressSubscriberOrSubscribers);
          }

          (*(procedure + 2))(procedure, *(*(&v12 + 1) + 8 * i));
        }

        v8 = [progressSubscriberOrSubscribers countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }

  else if (self->_progressSubscriberOrSubscribers)
  {
    (*(procedure + 2))(procedure);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:(id)procedure
{
  v7[5] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__NSFileAccessNode_forEachProgressSubscriberOfItemOrContainingItemPerformProcedure___block_invoke;
  v7[3] = &unk_1E69F9AB0;
  v7[4] = procedure;
  [(NSFileAccessNode *)self forEachProgressSubscriberOfItemPerformProcedure:v7];
  parent = self->_parent;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__NSFileAccessNode_forEachProgressSubscriberOfItemOrContainingItemPerformProcedure___block_invoke_2;
  v6[3] = &unk_1E69F9AB0;
  v6[4] = procedure;
  [(NSFileAccessNode *)parent forEachProgressSubscriberOfItemPerformProcedure:v6];
}

- (void)forEachProgressThingOfItemOrContainedItemPerformProcedure:(id)procedure
{
  v7[6] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke;
  v7[3] = &unk_1E69F9AD8;
  v7[4] = self;
  v7[5] = procedure;
  [(NSFileAccessNode *)self forEachProgressPublisherOfItemPerformProcedure:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke_2;
  v6[3] = &unk_1E69F9B00;
  v6[4] = self;
  v6[5] = procedure;
  [(NSFileAccessNode *)self forEachProgressSubscriberOfItemPerformProcedure:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke_3;
  v5[3] = &unk_1E69F9A38;
  v5[4] = procedure;
  [(NSFileAccessNode *)self forEachDescendantPerformProcedure:v5];
}

uint64_t __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke_3(uint64_t a1, void *a2)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke_4;
  v8[3] = &unk_1E69F9AD8;
  v4 = *(a1 + 32);
  v8[4] = a2;
  v8[5] = v4;
  [a2 forEachProgressPublisherOfItemPerformProcedure:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__NSFileAccessNode_forEachProgressThingOfItemOrContainedItemPerformProcedure___block_invoke_5;
  v7[3] = &unk_1E69F9B00;
  v5 = *(a1 + 32);
  v7[4] = a2;
  v7[5] = v5;
  return [a2 forEachProgressSubscriberOfItemPerformProcedure:v7];
}

- (void)assertDead
{
  v6 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v3 = 0;
    do
    {
      v3 |= [(NSString *)selfCopy->_normalizedName isEqualToString:@"/"];
      selfCopy = selfCopy->_parent;
    }

    while (selfCopy);
    if (v3)
    {
      v4 = _NSFCLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode assertDead] found a surprisingly live node.", v5, 2u);
      }
    }
  }
}

- (void)assertLive
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  v3 = 0;
  do
  {
    v3 |= [(NSString *)selfCopy->_normalizedName isEqualToString:@"/"];
    selfCopy = selfCopy->_parent;
  }

  while (selfCopy);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    v4 = _NSFCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "[NSFileAccessNode assertLive] found a surprisingly dead node.", v5, 2u);
    }
  }
}

- (void)assertDescendantsLive
{
  [(NSFileAccessNode *)self->_lastRequestedChild assertLive];

  [(NSFileAccessNode *)self forEachDescendantPerformProcedure:&__block_literal_global_47];
}

uint64_t __41__NSFileAccessNode_assertDescendantsLive__block_invoke(uint64_t a1, id *a2)
{
  [a2[12] assertLive];

  return [a2 assertLive];
}

- (BOOL)_mayContainCriticalDebuggingInformationExcludingReactors:(BOOL)reactors
{
  if (self->_accessClaimOrClaims)
  {
    v3 = 1;
    return v3 & 1;
  }

  if (self->_isArbitrationBoundary)
  {
LABEL_7:
    v3 = 1;
    return v3 & 1;
  }

  itemIsFilePackage = [(NSFileAccessNode *)self itemIsFilePackage];
  v3 = !reactors || itemIsFilePackage;
  if (!reactors && !itemIsFilePackage)
  {
    if (!self->_presenterOrPresenters)
    {
      v3 = self->_provider != 0;
      return v3 & 1;
    }

    goto LABEL_7;
  }

  return v3 & 1;
}

- (id)_childrenExcludingExcessNodes:(BOOL)nodes excludingReactors:(BOOL)reactors
{
  reactorsCopy = reactors;
  nodesCopy = nodes;
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childrenByNormalizedName = self->_childrenByNormalizedName;
  v9 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(childrenByNormalizedName);
        }

        v13 = [(NSMutableDictionary *)self->_childrenByNormalizedName objectForKey:*(*(&v17 + 1) + 8 * i)];
        v14 = v13;
        if (nodesCopy && ![v13 _mayContainCriticalDebuggingInformationExcludingReactors:reactorsCopy])
        {
          [array addObjectsFromArray:{objc_msgSend(v14, "_childrenExcludingExcessNodes:excludingReactors:", 1, reactorsCopy)}];
        }

        else
        {
          [array addObject:v14];
        }
      }

      v10 = [(NSMutableDictionary *)childrenByNormalizedName countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)descriptionWithIndenting:(id)indenting excludingExcessNodes:(BOOL)nodes excludingReactors:(BOOL)reactors
{
  reactorsCopy = reactors;
  nodesCopy = nodes;
  v63 = *MEMORY[0x1E69E9840];
  v8 = [indenting stringByAppendingString:@"    "];
  v9 = +[(NSString *)NSMutableString];
  [(NSString *)v9 appendFormat:@"%@<%@ %p> parent: %p, name: %@", indenting, objc_opt_class(), self, self->_parent, self->_name];
  if (self->_symbolicLinkDestination)
  {
    [(NSString *)v9 appendFormat:@" (link target to node %p)", self->_symbolicLinkDestination];
  }

  if (self->_symbolicLinkReferenceCount)
  {
    [(NSString *)v9 appendString:@" (a link destination)"];
  }

  if (self->_isArbitrationBoundary)
  {
    [(NSString *)v9 appendString:@" - an arbitration boundary"];
  }

  if (self->_provider && !reactorsCopy)
  {
    [(NSString *)v9 appendFormat:@"\n%@provider:", indenting];
    [(NSString *)v9 appendFormat:@"\n%@", [(NSFileReactorProxy *)self->_provider descriptionWithIndenting:v8]];
  }

  if (self->_presenterOrPresenters && !reactorsCopy)
  {
    [(NSString *)v9 appendFormat:@"\n%@presenters:", indenting];
    if (_NSIsNSSet())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      presenterOrPresenters = self->_presenterOrPresenters;
      v11 = [presenterOrPresenters countByEnumeratingWithState:&v59 objects:v58 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v60;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v60 != v13)
            {
              objc_enumerationMutation(presenterOrPresenters);
            }

            -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [*(*(&v59 + 1) + 8 * i) descriptionWithIndenting:v8]);
          }

          v12 = [presenterOrPresenters countByEnumeratingWithState:&v59 objects:v58 count:16];
        }

        while (v12);
      }
    }

    else
    {
      -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [self->_presenterOrPresenters descriptionWithIndenting:v8]);
    }
  }

  if (self->_accessClaimOrClaims)
  {
    [(NSString *)v9 appendFormat:@"\n%@access claims:", indenting];
    if (_NSIsNSSet())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      accessClaimOrClaims = self->_accessClaimOrClaims;
      v16 = [accessClaimOrClaims countByEnumeratingWithState:&v54 objects:v53 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v55;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(accessClaimOrClaims);
            }

            -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [*(*(&v54 + 1) + 8 * j) descriptionWithIndenting:v8]);
          }

          v17 = [accessClaimOrClaims countByEnumeratingWithState:&v54 objects:v53 count:16];
        }

        while (v17);
      }
    }

    else
    {
      -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [self->_accessClaimOrClaims descriptionWithIndenting:v8]);
    }
  }

  if (self->_progressSubscriberOrSubscribers)
  {
    [(NSString *)v9 appendFormat:@"\n%@progress subscribers:", indenting];
    if (_NSIsNSSet())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      progressSubscriberOrSubscribers = self->_progressSubscriberOrSubscribers;
      v21 = [progressSubscriberOrSubscribers countByEnumeratingWithState:&v49 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v50;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v50 != v23)
            {
              objc_enumerationMutation(progressSubscriberOrSubscribers);
            }

            -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [*(*(&v49 + 1) + 8 * k) descriptionWithIndenting:v8]);
          }

          v22 = [progressSubscriberOrSubscribers countByEnumeratingWithState:&v49 objects:v48 count:16];
        }

        while (v22);
      }
    }

    else
    {
      -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [self->_progressSubscriberOrSubscribers descriptionWithIndenting:v8]);
    }
  }

  if (self->_progressPublisherOrPublishers)
  {
    [(NSString *)v9 appendFormat:@"\n%@progress publishers:", indenting];
    if (_NSIsNSSet())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      progressPublisherOrPublishers = self->_progressPublisherOrPublishers;
      v26 = [progressPublisherOrPublishers countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v45;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v45 != v28)
            {
              objc_enumerationMutation(progressPublisherOrPublishers);
            }

            -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [*(*(&v44 + 1) + 8 * m) descriptionWithIndenting:v8]);
          }

          v27 = [progressPublisherOrPublishers countByEnumeratingWithState:&v44 objects:v43 count:16];
        }

        while (v27);
      }
    }

    else
    {
      -[NSString appendFormat:](v9, "appendFormat:", @"\n%@", [self->_progressPublisherOrPublishers descriptionWithIndenting:v8]);
    }
  }

  v30 = [(NSFileAccessNode *)self _childrenExcludingExcessNodes:nodesCopy excludingReactors:reactorsCopy];
  if ([v30 count])
  {
    [(NSString *)v9 appendFormat:@"\n%@children:", indenting];
    v31 = [v8 stringByAppendingString:@"    "];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = [v30 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (n = 0; n != v33; ++n)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v30);
          }

          -[NSString appendFormat:](v9, "appendFormat:", @"\n%@%@\n%@", v8, *(*(*(&v39 + 1) + 8 * n) + 24), [*(*(&v39 + 1) + 8 * n) descriptionWithIndenting:v31 excludingExcessNodes:nodesCopy excludingReactors:reactorsCopy]);
        }

        v33 = [v30 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v33);
    }
  }

  return v9;
}

@end