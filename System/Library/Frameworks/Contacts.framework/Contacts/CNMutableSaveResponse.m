@interface CNMutableSaveResponse
- (void)setContactSnapshot:(id)a3 forIndexPath:(id)a4;
- (void)setContainerSnapshot:(id)a3 forIndexPath:(id)a4;
- (void)setGroupSnapshot:(id)a3 forIndexPath:(id)a4;
@end

@implementation CNMutableSaveResponse

- (void)setContactSnapshot:(id)a3 forIndexPath:(id)a4
{
  contactSnapshotsByIndexPath = self->super._contactSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  v8 = a4;
  v9 = v7(v6, a3);
  [(NSMutableDictionary *)contactSnapshotsByIndexPath setObject:v9 forKey:v8];
}

- (void)setGroupSnapshot:(id)a3 forIndexPath:(id)a4
{
  groupSnapshotsByIndexPath = self->super._groupSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  v8 = a4;
  v9 = v7(v6, a3);
  [(NSMutableDictionary *)groupSnapshotsByIndexPath setObject:v9 forKey:v8];
}

- (void)setContainerSnapshot:(id)a3 forIndexPath:(id)a4
{
  containerSnapshotsByIndexPath = self->super._containerSnapshotsByIndexPath;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  v8 = a4;
  v9 = v7(v6, a3);
  [(NSMutableDictionary *)containerSnapshotsByIndexPath setObject:v9 forKey:v8];
}

@end