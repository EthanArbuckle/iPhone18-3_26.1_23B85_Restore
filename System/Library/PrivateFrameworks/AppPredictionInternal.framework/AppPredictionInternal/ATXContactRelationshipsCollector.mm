@interface ATXContactRelationshipsCollector
- (ATXContactRelationshipsCollector)initWithContactStore:(id)store;
@end

@implementation ATXContactRelationshipsCollector

- (ATXContactRelationshipsCollector)initWithContactStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = ATXContactRelationshipsCollector;
  v5 = [(ATXContactRelationshipsCollector *)&v17 init];
  if (v5)
  {
    cnContactIdsOfEmergencyContacts = [MEMORY[0x277CEB420] cnContactIdsOfEmergencyContacts];
    cnContactIdsOfEmergencyContacts = v5->_cnContactIdsOfEmergencyContacts;
    v5->_cnContactIdsOfEmergencyContacts = cnContactIdsOfEmergencyContacts;

    vipContactEmailAddresses = [MEMORY[0x277CEB420] vipContactEmailAddresses];
    vipContactEmailAddresses = v5->_vipContactEmailAddresses;
    v5->_vipContactEmailAddresses = vipContactEmailAddresses;

    cnContactIdsOfICloudFamilyMembers = [MEMORY[0x277CEB420] cnContactIdsOfICloudFamilyMembers];
    cnContactIdsOfICloudFamilyMembers = v5->_cnContactIdsOfICloudFamilyMembers;
    v5->_cnContactIdsOfICloudFamilyMembers = cnContactIdsOfICloudFamilyMembers;

    v12 = [MEMORY[0x277CEB420] cnContactIdsOfFavoriteContactsWithContactStore:storeCopy];
    cnContactIdsOfFavoriteContacts = v5->_cnContactIdsOfFavoriteContacts;
    v5->_cnContactIdsOfFavoriteContacts = v12;

    v14 = objc_opt_new();
    cnContactIdsOfPinnedChatsInMessage = v5->_cnContactIdsOfPinnedChatsInMessage;
    v5->_cnContactIdsOfPinnedChatsInMessage = v14;
  }

  return v5;
}

@end