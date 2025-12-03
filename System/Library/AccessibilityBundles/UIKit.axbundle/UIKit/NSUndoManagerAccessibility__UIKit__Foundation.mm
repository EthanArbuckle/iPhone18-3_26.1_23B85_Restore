@interface NSUndoManagerAccessibility__UIKit__Foundation
- (void)redo;
- (void)undo;
@end

@implementation NSUndoManagerAccessibility__UIKit__Foundation

- (void)undo
{
  v11[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = NSUndoManagerAccessibility__UIKit__Foundation;
  [(NSUndoManagerAccessibility__UIKit__Foundation *)&v7 undo];
  v10 = *MEMORY[0x29EDBD978];
  v11[0] = MEMORY[0x29EDB8EB0];
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  undoActionName = [(NSUndoManagerAccessibility__UIKit__Foundation *)selfCopy undoActionName];
  if (![undoActionName length])
  {
    v2 = UIKitAccessibilityLocalizedString();
    v3 = undoActionName;
    undoActionName = v2;
    MEMORY[0x29EDC9740](v3);
  }

  argument = [objc_allocWithZone(MEMORY[0x29EDBD7E8]) initWithString:undoActionName];
  [argument setAttributes:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(&undoActionName, 0);
  objc_storeStrong(&v6, 0);
}

- (void)redo
{
  v11[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = NSUndoManagerAccessibility__UIKit__Foundation;
  [(NSUndoManagerAccessibility__UIKit__Foundation *)&v7 redo];
  v10 = *MEMORY[0x29EDBD978];
  v11[0] = MEMORY[0x29EDB8EB0];
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  redoActionName = [(NSUndoManagerAccessibility__UIKit__Foundation *)selfCopy redoActionName];
  if (![redoActionName length])
  {
    v2 = UIKitAccessibilityLocalizedString();
    v3 = redoActionName;
    redoActionName = v2;
    MEMORY[0x29EDC9740](v3);
  }

  argument = [objc_allocWithZone(MEMORY[0x29EDBD7E8]) initWithString:redoActionName];
  [argument setAttributes:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(&redoActionName, 0);
  objc_storeStrong(&v6, 0);
}

@end