@interface ANAnnounceReachabilityServiceInterfaceDelegateProxy
- (ANAnnounceReachabilityServiceInterfaceDelegate)delegate;
- (void)reachabilityLevel:(unint64_t)level didChangeForHomeName:(id)name;
- (void)reachabilityLevel:(unint64_t)level didChangeForHomeUUID:(id)d;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoomName:(id)name inHomeName:(id)homeName;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoomUUID:(id)d inHomeUUID:(id)iD;
@end

@implementation ANAnnounceReachabilityServiceInterfaceDelegateProxy

- (void)reachabilityLevel:(unint64_t)level didChangeForHomeName:(id)name
{
  nameCopy = name;
  delegate = [(ANAnnounceReachabilityServiceInterfaceDelegateProxy *)self delegate];
  [delegate reachabilityLevel:level didChangeForHomeName:nameCopy];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoomName:(id)name inHomeName:(id)homeName
{
  homeNameCopy = homeName;
  nameCopy = name;
  delegate = [(ANAnnounceReachabilityServiceInterfaceDelegateProxy *)self delegate];
  [delegate reachabilityLevel:level didChangeForRoomName:nameCopy inHomeName:homeNameCopy];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForHomeUUID:(id)d
{
  dCopy = d;
  delegate = [(ANAnnounceReachabilityServiceInterfaceDelegateProxy *)self delegate];
  [delegate reachabilityLevel:level didChangeForHomeUUID:dCopy];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoomUUID:(id)d inHomeUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  delegate = [(ANAnnounceReachabilityServiceInterfaceDelegateProxy *)self delegate];
  [delegate reachabilityLevel:level didChangeForRoomUUID:dCopy inHomeUUID:iDCopy];
}

- (ANAnnounceReachabilityServiceInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end