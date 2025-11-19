@interface HKConceptSelection
+ (id)andSelectionWithSubselections:(id)a3;
+ (id)notSelectionWithSubselections:(id)a3;
+ (id)orSelectionWithSubselections:(id)a3;
+ (id)selectionForAllNodes;
+ (id)selectionForNoNodes;
+ (id)selectionForNodeWithIdentifier:(id)a3;
+ (id)selectionForNodesWithAttribute:(int64_t)a3 likeStringValue:(id)a4;
+ (id)selectionForNodesWithAttribute:(int64_t)a3 stringValue:(id)a4;
+ (id)selectionForNodesWithAttribute:(int64_t)a3 value:(id)a4;
+ (id)selectionForNodesWithCoding:(id)a3;
+ (id)selectionForObjectsWithRelationship:(int64_t)a3 fromSubjectSelection:(id)a4;
+ (id)selectionForObjectsWithRelationshipFromSubjectSelection:(id)a3;
+ (id)selectionForSubjectsWithRelationship:(int64_t)a3 toObjectSelection:(id)a4;
+ (id)selectionForSubjectsWithRelationshipToObjectSelection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKConceptSelection)init;
- (HKConceptSelection)initWithCoder:(id)a3;
@end

@implementation HKConceptSelection

- (HKConceptSelection)init
{
  v6.receiver = self;
  v6.super_class = HKConceptSelection;
  v2 = [(HKConceptSelection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)selectionForAllNodes
{
  v2 = [[HKAllConceptSelection alloc] initWithValue:1];

  return v2;
}

+ (id)selectionForNoNodes
{
  v2 = [[HKAllConceptSelection alloc] initWithValue:0];

  return v2;
}

+ (id)selectionForNodeWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HKIdentifierConceptSelection alloc] initWithIdentifier:v3];

  return v4;
}

+ (id)selectionForObjectsWithRelationshipFromSubjectSelection:(id)a3
{
  v3 = a3;
  v4 = [[HKRelationshipConceptSelection alloc] initWithDirection:1 type:-1 selection:v3];

  return v4;
}

+ (id)selectionForSubjectsWithRelationshipToObjectSelection:(id)a3
{
  v3 = a3;
  v4 = [[HKRelationshipConceptSelection alloc] initWithDirection:0 type:-1 selection:v3];

  return v4;
}

+ (id)selectionForObjectsWithRelationship:(int64_t)a3 fromSubjectSelection:(id)a4
{
  v5 = a4;
  v6 = [[HKRelationshipConceptSelection alloc] initWithDirection:1 type:a3 selection:v5];

  return v6;
}

+ (id)selectionForSubjectsWithRelationship:(int64_t)a3 toObjectSelection:(id)a4
{
  v5 = a4;
  v6 = [[HKRelationshipConceptSelection alloc] initWithDirection:0 type:a3 selection:v5];

  return v6;
}

+ (id)selectionForNodesWithAttribute:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [HKConceptSelection selectionForNodesWithAttribute:a2 value:a1];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[HKConceptSelection selectionForNodesWithAttribute:value:];
  }

  v8 = [[HKAttributeConceptSelection alloc] initWithAttribute:a3 operatorType:4 value:v7];

  return v8;
}

+ (id)selectionForNodesWithAttribute:(int64_t)a3 stringValue:(id)a4
{
  v5 = a4;
  v6 = [[HKAttributeConceptSelection alloc] initWithAttribute:a3 operatorType:4 value:v5];

  return v6;
}

+ (id)selectionForNodesWithAttribute:(int64_t)a3 likeStringValue:(id)a4
{
  v5 = a4;
  v6 = [[HKAttributeConceptSelection alloc] initWithAttribute:a3 operatorType:7 value:v5];

  return v6;
}

+ (id)selectionForNodesWithCoding:(id)a3
{
  v3 = a3;
  v4 = [[HKMedicalCodingConceptSelection alloc] initWithMedicalCoding:v3];

  return v4;
}

+ (id)andSelectionWithSubselections:(id)a3
{
  v3 = a3;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:v3 operationType:1];

  return v4;
}

+ (id)orSelectionWithSubselections:(id)a3
{
  v3 = a3;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:v3 operationType:2];

  return v4;
}

+ (id)notSelectionWithSubselections:(id)a3
{
  v3 = a3;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:v3 operationType:0];

  return v4;
}

- (HKConceptSelection)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HKConceptSelection;
  v3 = [(HKConceptSelection *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (void)selectionForNodesWithAttribute:(uint64_t)a1 value:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKConceptSelection.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"value"}];
}

@end