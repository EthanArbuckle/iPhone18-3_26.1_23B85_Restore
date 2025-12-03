@interface CNMutableSaveResponse
- (void)setContactSnapshot:(id)snapshot forIndexPath:(id)path;
- (void)setContainerSnapshot:(id)snapshot forIndexPath:(id)path;
- (void)setGroupSnapshot:(id)snapshot forIndexPath:(id)path;
@end

@implementation CNMutableSaveResponse

- (void)setContactSnapshot:(id)snapshot forIndexPath:(id)path
{
  contactSnapshotsByIndexPath = self->super._contactSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  pathCopy = path;
  v9 = v7(v6, snapshot);
  [(NSMutableDictionary *)contactSnapshotsByIndexPath setObject:v9 forKey:pathCopy];
}

- (void)setGroupSnapshot:(id)snapshot forIndexPath:(id)path
{
  groupSnapshotsByIndexPath = self->super._groupSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  pathCopy = path;
  v9 = v7(v6, snapshot);
  [(NSMutableDictionary *)groupSnapshotsByIndexPath setObject:v9 forKey:pathCopy];
}

- (void)setContainerSnapshot:(id)snapshot forIndexPath:(id)path
{
  containerSnapshotsByIndexPath = self->super._containerSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  pathCopy = path;
  v9 = v7(v6, snapshot);
  [(NSMutableDictionary *)containerSnapshotsByIndexPath setObject:v9 forKey:pathCopy];
}

@end