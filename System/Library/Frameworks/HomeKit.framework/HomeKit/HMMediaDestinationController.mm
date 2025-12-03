@interface HMMediaDestinationController
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)availableDestinationIdentifiersIsEqualToIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (HMMediaDestination)destination;
- (HMMediaDestinationController)initWithControllerData:(id)data;
- (HMMediaDestinationController)initWithIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier supportedOptions:(unint64_t)options availableDestinationIdentifiers:(id)identifiers;
- (HMMediaDestinationControllerDataSource)dataSource;
- (HMMediaDestinationControllerDelegate)delegate;
- (NSArray)attributeDescriptions;
- (NSArray)availableDestinationIdentifiers;
- (NSArray)availableDestinations;
- (NSString)shortDescription;
- (NSUUID)destinationIdentifier;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_notifyDidUpdateDestination;
- (void)callCompletionHandler:(id)handler error:(id)error;
- (void)configureLastNotifiedDestinationIdentifier;
- (void)configureWithContext:(id)context dataSource:(id)source;
- (void)mergeSupportedOptionsWithNewController:(id)controller;
- (void)notifyDidUpdateAvailableDestinations;
- (void)notifyDidUpdateDestination;
- (void)setAvailableDestinationIdentifiers:(id)identifiers;
- (void)setDestinationIdentifier:(id)identifier;
- (void)updateDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation HMMediaDestinationController

- (HMMediaDestinationControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMMediaDestinationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)hash
{
  identifier = [(HMMediaDestinationController *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifier = [(HMMediaDestinationController *)self identifier];
      identifier2 = [(HMMediaDestinationController *)v6 identifier];
      if ([identifier hmf_isEqualToUUID:identifier2])
      {
        availableDestinationIdentifiers = [(HMMediaDestinationController *)v6 availableDestinationIdentifiers];
        if ([(HMMediaDestinationController *)self availableDestinationIdentifiersIsEqualToIdentifiers:availableDestinationIdentifiers])
        {
          destinationIdentifier = [(HMMediaDestinationController *)self destinationIdentifier];
          destinationIdentifier2 = [(HMMediaDestinationController *)v6 destinationIdentifier];
          v12 = [destinationIdentifier hmf_isEqualToUUID:destinationIdentifier2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMMediaDestinationController *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  destinationIdentifier = [(HMMediaDestinationController *)self destinationIdentifier];
  v8 = [v6 initWithName:@"destinationIdentifier" value:destinationIdentifier];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMMediaDestinationControllerSupportOptionsAsString([(HMMediaDestinationController *)self supportedOptions]);
  v11 = [v9 initWithName:@"supportedOptions" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  availableDestinationIdentifiers = [(HMMediaDestinationController *)self availableDestinationIdentifiers];
  v14 = [v12 initWithName:@"availableDestinationIdentifiers" value:availableDestinationIdentifiers];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  identifier = [(HMMediaDestinationController *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)mergeSupportedOptionsWithNewController:(id)controller
{
  v16 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  supportedOptions = [(HMMediaDestinationController *)self supportedOptions];
  if (supportedOptions != [controllerCopy supportedOptions])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMMediaDestinationControllerSupportOptionsAsString([controllerCopy supportedOptions]);
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Merging supported options: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    -[HMMediaDestinationController setSupportedOptions:](selfCopy, "setSupportedOptions:", [controllerCopy supportedOptions]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v56 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v21;
      v52 = 2112;
      v53 = objectCopy;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to merge new media destination controller using new object: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  identifier = [(HMMediaDestinationController *)self identifier];
  identifier2 = [v6 identifier];
  v9 = [identifier hmf_isEqualToUUID:identifier2];

  if ((v9 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      identifier3 = [v6 identifier];
      identifier4 = [(HMMediaDestinationController *)selfCopy2 identifier];
      *buf = 138543874;
      v51 = v22;
      v52 = 2112;
      v53 = identifier3;
      v54 = 2112;
      v55 = identifier4;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to merge new media destination controller with identifier: %@ due to existing identifier: %@", buf, 0x20u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v18);
    v25 = 0;
    goto LABEL_27;
  }

  destinationIdentifier = [(HMMediaDestinationController *)self destinationIdentifier];
  destinationIdentifier2 = [v6 destinationIdentifier];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_15;
  }

  lastNotifiedDestinationIdentifier = [(HMMediaDestinationController *)self lastNotifiedDestinationIdentifier];
  destinationIdentifier3 = [v6 destinationIdentifier];
  uUIDString = [destinationIdentifier3 UUIDString];
  v16 = HMFEqualObjects();

  if (v16)
  {
    v17 = 0;
  }

  else
  {
LABEL_15:
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      destinationIdentifier4 = [v6 destinationIdentifier];
      *buf = 138543618;
      v51 = v29;
      v52 = 2112;
      v53 = destinationIdentifier4;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Merging new media destination controller destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v17 = 1;
  }

  availableDestinationIdentifiers = [v6 availableDestinationIdentifiers];
  v32 = [(HMMediaDestinationController *)self availableDestinationIdentifiersIsEqualToIdentifiers:availableDestinationIdentifiers];

  if (!v32)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      availableDestinationIdentifiers2 = [v6 availableDestinationIdentifiers];
      *buf = 138543618;
      v51 = v36;
      v52 = 2112;
      v53 = availableDestinationIdentifiers2;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@Merging new media destination controller available destinations: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  os_unfair_lock_lock_with_options();
  availableDestinationIdentifiers3 = [v6 availableDestinationIdentifiers];
  availableDestinationIdentifiers = self->_availableDestinationIdentifiers;
  self->_availableDestinationIdentifiers = availableDestinationIdentifiers3;

  destinationIdentifier5 = [v6 destinationIdentifier];
  destinationIdentifier = self->_destinationIdentifier;
  self->_destinationIdentifier = destinationIdentifier5;

  os_unfair_lock_unlock(&self->_lock);
  [(HMMediaDestinationController *)self mergeSupportedOptionsWithNewController:v6];
  if (v17)
  {
    context = [(HMMediaDestinationController *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMMediaDestinationController_mergeFromNewObject___block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  if (!v32)
  {
    context2 = [(HMMediaDestinationController *)self context];
    queue2 = [context2 queue];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __51__HMMediaDestinationController_mergeFromNewObject___block_invoke_2;
    v48[3] = &unk_1E754E2A8;
    v48[4] = self;
    dispatch_async(queue2, v48);
  }

  v25 = v17 | !v32;
LABEL_27:

  v46 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)availableDestinationIdentifiersIsEqualToIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  availableDestinationIdentifiers = [(HMMediaDestinationController *)self availableDestinationIdentifiers];
  v6 = [availableDestinationIdentifiers count];
  if (v6 == [identifiersCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__HMMediaDestinationController_availableDestinationIdentifiersIsEqualToIdentifiers___block_invoke;
    v9[3] = &unk_1E7548C60;
    v10 = availableDestinationIdentifiers;
    v7 = [identifiersCopy na_allObjectsPassTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notifyDidUpdateAvailableDestinations
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMMediaDestinationController *)self context];
  delegateCaller = [context delegateCaller];
  v5 = delegateCaller;
  if (delegateCaller)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__HMMediaDestinationController_notifyDidUpdateAvailableDestinations__block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    [delegateCaller invokeBlock:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = context;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated available destinations due to no delegate caller given by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __68__HMMediaDestinationController_notifyDidUpdateAvailableDestinations__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Calling did update available destinations for delegate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 mediaDestinationControllerDidUpdateAvailableDestinations:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDidUpdateDestination
{
  v25 = *MEMORY[0x1E69E9840];
  destination = [(HMMediaDestinationController *)self destination];
  lastNotifiedDestinationIdentifier = [(HMMediaDestinationController *)self lastNotifiedDestinationIdentifier];
  audioDestinationIdentifier = [destination audioDestinationIdentifier];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      lastNotifiedDestinationIdentifier2 = [(HMMediaDestinationController *)selfCopy lastNotifiedDestinationIdentifier];
      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = lastNotifiedDestinationIdentifier2;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Skipping notifying of update destination due to matching destination identifiers: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    audioDestinationIdentifier2 = [destination audioDestinationIdentifier];
    [(HMMediaDestinationController *)self setLastNotifiedDestinationIdentifier:audioDestinationIdentifier2];

    delegate = [(HMMediaDestinationController *)self delegate];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = destination;
      v23 = 2112;
      v24 = delegate;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Notifying client did update destination: %@ delegate: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (objc_opt_respondsToSelector())
    {
      [delegate mediaDestinationController:selfCopy2 didUpdateDestination:destination];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)notifyDidUpdateDestination
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMMediaDestinationController *)self context];
  delegateCaller = [context delegateCaller];
  v5 = delegateCaller;
  if (delegateCaller)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__HMMediaDestinationController_notifyDidUpdateDestination__block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    [delegateCaller invokeBlock:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = context;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated destination due to no delegate caller given by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)callCompletionHandler:(id)handler error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  errorCopy = error;
  if (handlerCopy)
  {
    context = [(HMMediaDestinationController *)self context];
    delegateCaller = [context delegateCaller];
    v10 = delegateCaller;
    if (delegateCaller)
    {
      [delegateCaller callCompletion:handlerCopy error:errorCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = context;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to call client completion handler due to no delegate caller given by context: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to call client completion handler due to no handler provided", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (NSArray)availableDestinations
{
  v20 = *MEMORY[0x1E69E9840];
  availableDestinationIdentifiers = [(HMMediaDestinationController *)self availableDestinationIdentifiers];
  dataSource = [(HMMediaDestinationController *)self dataSource];
  if (dataSource)
  {
    availableDestinationIdentifiers2 = [(HMMediaDestinationController *)self availableDestinationIdentifiers];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMMediaDestinationController_availableDestinations__block_invoke;
    v13[3] = &unk_1E7547088;
    v14 = dataSource;
    selfCopy = self;
    v6 = [availableDestinationIdentifiers2 na_map:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = availableDestinationIdentifiers;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@No data source set to get available destinations with identifiers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

id __53__HMMediaDestinationController_availableDestinations__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) mediaDestinationController:*(a1 + 40) destinationWithIdentifier:v3];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination with identifier: %@ from data source: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (HMMediaDestination)destination
{
  v25 = *MEMORY[0x1E69E9840];
  destinationIdentifier = [(HMMediaDestinationController *)self destinationIdentifier];
  if (destinationIdentifier)
  {
    dataSource = [(HMMediaDestinationController *)self dataSource];
    v5 = dataSource;
    if (dataSource)
    {
      v6 = [dataSource mediaDestinationController:self destinationWithIdentifier:destinationIdentifier];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543874;
          v20 = v16;
          v21 = 2112;
          v22 = destinationIdentifier;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination with identifier: %@ from data source: %@", &v19, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = destinationIdentifier;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@No data source set to get destination with identifier: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setDestinationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  destinationIdentifier = self->_destinationIdentifier;
  self->_destinationIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)destinationIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_destinationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAvailableDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock_with_options();
  availableDestinationIdentifiers = self->_availableDestinationIdentifiers;
  self->_availableDestinationIdentifiers = identifiersCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)availableDestinationIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = self->_availableDestinationIdentifiers;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configureLastNotifiedDestinationIdentifier
{
  v16 = *MEMORY[0x1E69E9840];
  destination = [(HMMediaDestinationController *)self destination];
  audioDestinationIdentifier = [destination audioDestinationIdentifier];
  lastNotifiedDestinationIdentifier = [(HMMediaDestinationController *)self lastNotifiedDestinationIdentifier];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = audioDestinationIdentifier;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring last notified destination identifier: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMMediaDestinationController *)selfCopy setLastNotifiedDestinationIdentifier:audioDestinationIdentifier];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)configureWithContext:(id)context dataSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  sourceCopy = source;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = selfCopy;
    v17 = 2112;
    v18 = contextCopy;
    v19 = 2112;
    v20 = sourceCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring destination controller: %@ context: %@ data source: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMediaDestinationController *)selfCopy setContext:contextCopy];
  [(HMMediaDestinationController *)selfCopy setDataSource:sourceCopy];
  [(HMMediaDestinationController *)selfCopy configureLastNotifiedDestinationIdentifier];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMMediaDestinationControllerUpateOptionsAsString(options);
    *buf = 138543874;
    v42 = v13;
    v43 = 2112;
    v44 = destinationCopy;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending update destination message with destination: %@ options: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  context = [(HMMediaDestinationController *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  if (messageDispatcher)
  {
    v17 = [[HMMediaDestinationControllerRequestMessagePayload alloc] initWithDestination:destinationCopy options:options];
    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x1E69A2A00]);
      identifier = [(HMMediaDestinationController *)selfCopy identifier];
      v20 = [v18 initWithTarget:identifier];

      v21 = objc_alloc(MEMORY[0x1E69A2A10]);
      payloadCopy = [(HMMediaDestinationControllerRequestMessagePayload *)v17 payloadCopy];
      v23 = [v21 initWithName:@"HMMediaDestinationControllerUpdateDestinationRequestMessage" destination:v20 payload:payloadCopy];

      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __76__HMMediaDestinationController_updateDestination_options_completionHandler___block_invoke;
      v38 = &unk_1E754DE00;
      v39 = selfCopy;
      v40 = handlerCopy;
      [v23 setResponseHandler:&v35];
      v24 = [v23 copy];
      [messageDispatcher sendMessage:v24];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = HMMediaDestinationControllerUpateOptionsAsString(options);
        *buf = 138543874;
        v42 = v32;
        v43 = 2112;
        v44 = destinationCopy;
        v45 = 2112;
        v46 = v33;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination payload for destination: %@ options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [(HMMediaDestinationController *)v30 callCompletionHandler:handlerCopy error:v20];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v28;
      v43 = 2112;
      v44 = context;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination due to no message dispatcher given by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [(HMMediaDestinationController *)v26 callCompletionHandler:handlerCopy error:v17];
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __76__HMMediaDestinationController_updateDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update destination message responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) callCompletionHandler:*(a1 + 40) error:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update destination message succeeded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) callCompletionHandler:*(a1 + 40)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (HMMediaDestinationController)initWithIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier supportedOptions:(unint64_t)options availableDestinationIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  destinationIdentifierCopy = destinationIdentifier;
  identifiersCopy = identifiers;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v14 = identifiersCopy;
  if (!identifiersCopy)
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return [(HMMediaDestinationController *)v20 initWithControllerData:v21, v22];
  }

  v23.receiver = self;
  v23.super_class = HMMediaDestinationController;
  v15 = [(HMMediaDestinationController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_destinationIdentifier, destinationIdentifier);
    uUIDString = [destinationIdentifierCopy UUIDString];
    lastNotifiedDestinationIdentifier = v16->_lastNotifiedDestinationIdentifier;
    v16->_lastNotifiedDestinationIdentifier = uUIDString;

    v16->_supportedOptions = options;
    objc_storeStrong(&v16->_availableDestinationIdentifiers, identifiers);
  }

  return v16;
}

- (HMMediaDestinationController)initWithControllerData:(id)data
{
  dataCopy = data;
  identifier = [dataCopy identifier];
  destinationIdentifier = [dataCopy destinationIdentifier];
  supportedOptions = [dataCopy supportedOptions];
  availableDestinationIdentifiers = [dataCopy availableDestinationIdentifiers];

  v9 = [(HMMediaDestinationController *)self initWithIdentifier:identifier destinationIdentifier:destinationIdentifier supportedOptions:supportedOptions availableDestinationIdentifiers:availableDestinationIdentifiers];
  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29, &__block_literal_global_8294);
  }

  v3 = logCategory__hmf_once_v30;

  return v3;
}

uint64_t __43__HMMediaDestinationController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v30 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end