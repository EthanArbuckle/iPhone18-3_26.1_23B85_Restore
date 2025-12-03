@interface HKConceptSelection
+ (id)andSelectionWithSubselections:(id)subselections;
+ (id)notSelectionWithSubselections:(id)subselections;
+ (id)orSelectionWithSubselections:(id)subselections;
+ (id)selectionForAllNodes;
+ (id)selectionForNoNodes;
+ (id)selectionForNodeWithIdentifier:(id)identifier;
+ (id)selectionForNodesWithAttribute:(int64_t)attribute likeStringValue:(id)value;
+ (id)selectionForNodesWithAttribute:(int64_t)attribute stringValue:(id)value;
+ (id)selectionForNodesWithAttribute:(int64_t)attribute value:(id)value;
+ (id)selectionForNodesWithCoding:(id)coding;
+ (id)selectionForObjectsWithRelationship:(int64_t)relationship fromSubjectSelection:(id)selection;
+ (id)selectionForObjectsWithRelationshipFromSubjectSelection:(id)selection;
+ (id)selectionForSubjectsWithRelationship:(int64_t)relationship toObjectSelection:(id)selection;
+ (id)selectionForSubjectsWithRelationshipToObjectSelection:(id)selection;
- (BOOL)isEqual:(id)equal;
- (HKConceptSelection)init;
- (HKConceptSelection)initWithCoder:(id)coder;
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

+ (id)selectionForNodeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKIdentifierConceptSelection alloc] initWithIdentifier:identifierCopy];

  return v4;
}

+ (id)selectionForObjectsWithRelationshipFromSubjectSelection:(id)selection
{
  selectionCopy = selection;
  v4 = [[HKRelationshipConceptSelection alloc] initWithDirection:1 type:-1 selection:selectionCopy];

  return v4;
}

+ (id)selectionForSubjectsWithRelationshipToObjectSelection:(id)selection
{
  selectionCopy = selection;
  v4 = [[HKRelationshipConceptSelection alloc] initWithDirection:0 type:-1 selection:selectionCopy];

  return v4;
}

+ (id)selectionForObjectsWithRelationship:(int64_t)relationship fromSubjectSelection:(id)selection
{
  selectionCopy = selection;
  v6 = [[HKRelationshipConceptSelection alloc] initWithDirection:1 type:relationship selection:selectionCopy];

  return v6;
}

+ (id)selectionForSubjectsWithRelationship:(int64_t)relationship toObjectSelection:(id)selection
{
  selectionCopy = selection;
  v6 = [[HKRelationshipConceptSelection alloc] initWithDirection:0 type:relationship selection:selectionCopy];

  return v6;
}

+ (id)selectionForNodesWithAttribute:(int64_t)attribute value:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    [HKConceptSelection selectionForNodesWithAttribute:a2 value:self];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[HKConceptSelection selectionForNodesWithAttribute:value:];
  }

  v8 = [[HKAttributeConceptSelection alloc] initWithAttribute:attribute operatorType:4 value:valueCopy];

  return v8;
}

+ (id)selectionForNodesWithAttribute:(int64_t)attribute stringValue:(id)value
{
  valueCopy = value;
  v6 = [[HKAttributeConceptSelection alloc] initWithAttribute:attribute operatorType:4 value:valueCopy];

  return v6;
}

+ (id)selectionForNodesWithAttribute:(int64_t)attribute likeStringValue:(id)value
{
  valueCopy = value;
  v6 = [[HKAttributeConceptSelection alloc] initWithAttribute:attribute operatorType:7 value:valueCopy];

  return v6;
}

+ (id)selectionForNodesWithCoding:(id)coding
{
  codingCopy = coding;
  v4 = [[HKMedicalCodingConceptSelection alloc] initWithMedicalCoding:codingCopy];

  return v4;
}

+ (id)andSelectionWithSubselections:(id)subselections
{
  subselectionsCopy = subselections;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:subselectionsCopy operationType:1];

  return v4;
}

+ (id)orSelectionWithSubselections:(id)subselections
{
  subselectionsCopy = subselections;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:subselectionsCopy operationType:2];

  return v4;
}

+ (id)notSelectionWithSubselections:(id)subselections
{
  subselectionsCopy = subselections;
  v4 = [[HKCompoundConceptSelection alloc] initWithSelections:subselectionsCopy operationType:0];

  return v4;
}

- (HKConceptSelection)initWithCoder:(id)coder
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
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